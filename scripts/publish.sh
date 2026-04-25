#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
WIKI_EXPORT_DIR="$ROOT_DIR/.wiki-publish"
PAGES_EXPORT_DIR="$ROOT_DIR/.pages-publish"
WIKI_REMOTE="${WIKI_REMOTE:-new-origin}"
PAGES_REMOTE="${PAGES_REMOTE:-origin}"
PAGES_BRANCH="${PAGES_BRANCH:-gh-pages}"
WIKI_COMMIT_MESSAGE="${WIKI_COMMIT_MESSAGE:-Publish wiki from source repo}"
PAGES_COMMIT_MESSAGE="${PAGES_COMMIT_MESSAGE:-Publish Pages site from source repo}"
DEPLOY_PAGES=0
PUSH_WIKI=0
CHECK_PUBLIC_URL=0

prepare_wiki_export=0

usage() {
  cat <<'EOF'
Usage: bash scripts/publish.sh [options]

Options:
  --deploy-pages         Build and deploy the Jekyll site to gh-pages.
  --push-wiki            Commit and push the filtered wiki export to the wiki remote.
  --check-public-url     After validation or deploy, confirm the public Pages URL responds.
  --wiki-message TEXT    Commit message to use for wiki export push.
  --help                 Show this help text.

Environment overrides:
  WIKI_REMOTE            Wiki remote name. Default: new-origin
  PAGES_REMOTE           Pages remote name. Default: origin
  PAGES_BRANCH           Pages branch name. Default: gh-pages
  WIKI_COMMIT_MESSAGE    Default wiki commit message.
  PAGES_COMMIT_MESSAGE   Default Pages commit message.

Default behavior without flags:
  - Generate docs/
  - Build the filtered wiki export in .wiki-publish/
  - Do not push or deploy anything
EOF
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --deploy-pages)
      DEPLOY_PAGES=1
      shift
      ;;
    --push-wiki)
      PUSH_WIKI=1
      shift
      ;;
    --check-public-url)
      CHECK_PUBLIC_URL=1
      shift
      ;;
    --wiki-message)
      if [[ $# -lt 2 ]]; then
        echo "--wiki-message requires a value" >&2
        exit 1
      fi
      WIKI_COMMIT_MESSAGE="$2"
      shift 2
      ;;
    --help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown argument: $1" >&2
      usage >&2
      exit 1
      ;;
  esac
done

CURRENT_BRANCH="$(git -C "$ROOT_DIR" branch --show-current 2>/dev/null || true)"
if [[ -n "$CURRENT_BRANCH" && "$CURRENT_BRANCH" == "$PAGES_BRANCH" ]]; then
  echo "Refusing to run publish workflow from '$PAGES_BRANCH'. Switch to the source branch first." >&2
  exit 1
fi

require_command() {
  if ! command -v "$1" >/dev/null 2>&1; then
    echo "Missing required command: $1" >&2
    exit 1
  fi
}

require_command git
require_command ruby
require_command rsync
require_command bundle
require_command mktemp

cd "$ROOT_DIR"

ruby scripts/prepare_docs.rb

bundle exec jekyll build

ruby scripts/validate_site.rb

if [[ "$PUSH_WIKI" -eq 1 || "$DEPLOY_PAGES" -eq 0 ]]; then
  prepare_wiki_export=1
fi

if [[ "$prepare_wiki_export" -eq 1 ]]; then
  rm -rf "$WIKI_EXPORT_DIR"
  git clone "$(git remote get-url "$WIKI_REMOTE")" "$WIKI_EXPORT_DIR"

  find "$WIKI_EXPORT_DIR" -mindepth 1 -maxdepth 1 ! -name .git -exec rm -rf {} +

  rsync -a \
    --exclude='.git/' \
    --exclude='de/images/' \
    --exclude='images/' \
    --exclude='instructions/' \
    --exclude='notes' \
    --exclude='scripts/' \
    --exclude='docs/' \
    --exclude='_site/' \
    --exclude='.pages-publish/' \
    --exclude='.wiki-publish/' \
    --exclude='.bundle/' \
    --exclude='.ruby-lsp/' \
    --exclude='vendor/' \
    --exclude='Gemfile' \
    --exclude='Gemfile.lock' \
    --exclude='_config.yml' \
    "$ROOT_DIR/" "$WIKI_EXPORT_DIR/"

  if [[ -d "$ROOT_DIR/images" ]]; then
    rsync -a "$ROOT_DIR/images/" "$WIKI_EXPORT_DIR/images/"
  fi

  if [[ -d "$ROOT_DIR/de/images" ]]; then
    mkdir -p "$WIKI_EXPORT_DIR/de/images"
    rsync -a "$ROOT_DIR/de/images/" "$WIKI_EXPORT_DIR/de/images/"
  fi
fi

if [[ "$PUSH_WIKI" -eq 1 ]]; then
  git -C "$WIKI_EXPORT_DIR" add -A
  if [[ -n "$(git -C "$WIKI_EXPORT_DIR" status --short)" ]]; then
    git -C "$WIKI_EXPORT_DIR" commit -m "$WIKI_COMMIT_MESSAGE"
    git -C "$WIKI_EXPORT_DIR" push origin HEAD
    echo "Pushed filtered wiki export to $WIKI_REMOTE"
  else
    echo "No wiki changes to push."
  fi
fi

if [[ "$DEPLOY_PAGES" -eq 1 ]]; then
  pages_export_dir="$PAGES_EXPORT_DIR"
  if [[ ! -d "$PAGES_EXPORT_DIR/.git" ]] || [[ "$(git -C "$PAGES_EXPORT_DIR" rev-parse --show-toplevel 2>/dev/null || true)" != "$PAGES_EXPORT_DIR" ]]; then
    pages_export_dir="$(mktemp -d "${TMPDIR:-/tmp}/dsa5-pages-XXXXXX")"
  else
    rm -rf "$PAGES_EXPORT_DIR"/*
  fi

  if git ls-remote --exit-code --heads "$(git remote get-url "$PAGES_REMOTE")" "$PAGES_BRANCH" >/dev/null 2>&1; then
    git clone --branch "$PAGES_BRANCH" "$(git remote get-url "$PAGES_REMOTE")" "$pages_export_dir"
  else
    mkdir -p "$pages_export_dir"
    git -C "$pages_export_dir" init
    git -C "$pages_export_dir" remote add origin "$(git remote get-url "$PAGES_REMOTE")"
    git -C "$pages_export_dir" checkout --orphan "$PAGES_BRANCH"
  fi

  chmod -R u+w "$pages_export_dir" 2>/dev/null || true
  find "$pages_export_dir" -mindepth 1 -maxdepth 1 ! -name .git -exec rm -rf {} +
  rsync -a --delete --exclude='.git/' "$ROOT_DIR/_site/" "$pages_export_dir/"
  git -C "$pages_export_dir" add -A
  if [[ -n "$(git -C "$pages_export_dir" status --short)" ]]; then
    git -C "$pages_export_dir" commit -m "$PAGES_COMMIT_MESSAGE"
    git -C "$pages_export_dir" push origin HEAD:"$PAGES_BRANCH"
    echo "Deployed Pages site to $PAGES_REMOTE/$PAGES_BRANCH"
  else
    echo "No Pages changes to push."
  fi

  if [[ "$pages_export_dir" != "$PAGES_EXPORT_DIR" ]]; then
    rm -rf "$pages_export_dir"
  fi
fi

if [[ "$CHECK_PUBLIC_URL" -eq 1 ]]; then
  ruby scripts/validate_site.rb --check-public-url
fi

if [[ "$prepare_wiki_export" -eq 1 ]]; then
  echo "Prepared docs/ and filtered wiki export in $WIKI_EXPORT_DIR"
else
  echo "Prepared docs/ and Pages site build artifacts."
fi

if [[ "$PUSH_WIKI" -eq 0 || "$DEPLOY_PAGES" -eq 0 ]]; then
  echo "Remaining manual actions:"
  if [[ "$PUSH_WIKI" -eq 0 ]]; then
    echo "  - Review and optionally push the wiki export with: bash scripts/publish.sh --push-wiki"
  fi
  if [[ "$DEPLOY_PAGES" -eq 0 ]]; then
    echo "  - Deploy Pages with: bash scripts/publish.sh --deploy-pages"
  fi
fi
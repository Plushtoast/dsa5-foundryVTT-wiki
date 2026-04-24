# Dual Publish Plan: GitHub Wiki and GitHub Pages

## Overview

This plan defines a concrete manual publishing workflow for this repository with two outputs:

1. Push the markdown wiki content to the GitHub wiki remote such as `new-origin`.
2. Build and publish a polished GitHub Pages site from the same wiki source.

**Created:** April 24, 2026
**Updated:** April 24, 2026
**Status:** Approved direction, pending implementation

---

## Chosen Decisions
Use **Jekyll with a Ruby-based preparation pipeline**.
Why this is the chosen fit now:
1. Ruby tooling is available on the target machine.
2. The project can stay Ruby-first from content preparation through site build.
3. Jekyll is a stable static-site generator that works well with markdown-heavy repositories.
4. A custom Jekyll layout can support the dark fantasy presentation without requiring a Python toolchain.
5. Jekyll builds from the generated site source and publishes to `gh-pages`.
Once Jekyll and Pages support files are added to this repository, a direct branch push such as `git push new-origin master` is no longer the correct wiki publish mechanism.
3. Exclude Jekyll, Pages, planning, and repository-maintenance files from the wiki export.
1. Confirm `git`, `ruby`, `bundle`, and Jekyll dependencies are installed.
8. Rewrite links and paths where needed for Jekyll pages and navigation.
1. Run `bundle exec jekyll build`
1. The Pages site will include both German and English wiki pages.
1. Build the static site with Jekyll.
2. Publish the generated output to the `gh-pages` branch.
3. Leave deployment manual and operator-driven.
1. `_config.yml`
2. `Gemfile`
3. `Gemfile.lock`

4. `scripts/prepare_docs.rb`
5. `scripts/generate_automation_status.rb`
3. The homepage must link to relevant Ulisses pages in German and English.
5. `docs/assets/stylesheets/extra.css`
6. `docs/_layouts/`
7. `docs/_includes/`
1. Add Jekyll and Bundler dependencies.
2. Add `_config.yml`.
3. Add a minimal Ruby docs preparation script.
1. Use the provided banner as the homepage hero background.
2. Use a dark overlay on top of that image.
2. Read detailed data from `module_contents.json.gz` when needed.
4. The interior pages should be calmer and more text-focused than the hero section.

### Additional Generated Page

2. Jekyll plus Ruby scripts for the pretty docs site.
2. It should summarize module contents and automation coverage.
3. It should draw from the following sources:
   - `../../foundry14/lazy/module_contents.json.gz`
1. Create a minimal Jekyll prototype from a subset of the current docs.
   - `../../foundry14/lazy/expansions_de.json`
3. Keep the Pages target on `gh-pages`.
4. It should support German as well, not just English.

---

## Final Architecture

### Source of Truth

This repository remains the only source repository that humans edit.

The GitHub wiki remote and the GitHub Pages output are both deployment targets.

Because this repository will also contain Pages build configuration and support scripts, the wiki remote must not be updated by blindly pushing the whole branch to `new-origin` once implementation begins.

### Site Generator

Use **Jekyll with a Ruby-based preparation pipeline**.

Why this is the chosen fit now:

1. Ruby tooling is available on the target machine.
2. The project can stay Ruby-first from content preparation through site build.
3. Jekyll is a stable static-site generator that works well with markdown-heavy repositories.
4. A custom Jekyll layout can support the dark fantasy presentation without requiring a Python toolchain.

### Pages Build Model

The Pages site should be built from a generated `docs/` directory.

That means:

1. The existing repo layout stays optimized for wiki editing.
2. A preparation step copies all public wiki pages into `docs/`.
3. Internal planning content is excluded.
4. A generated homepage and a generated automation-status page are added during prep.
5. Jekyll builds from the generated site source and publishes to `gh-pages`.

This remains the cleanest answer to "how do I build the github.io site with just the docs?"

---

## Reachability

Once GitHub Pages is enabled for this repository and the site is published from `gh-pages`, the site should be reachable at:

`https://plushtoast.github.io/dsa5-foundryVTT-wiki/`

No second repository is required for this setup.

---

## Content Mapping Rules

### Wiki Publish Safety Rule

Once Jekyll and Pages support files are added to this repository, a direct branch push such as `git push new-origin master` is no longer the correct wiki publish mechanism.

Reason:

1. It would push wiki content and Pages/build support files together.
2. It would clutter the GitHub wiki repository with files not meant for wiki rendering.
3. It would couple wiki publication to repository internals that should remain local to this source repo.

The wiki deployment must therefore publish a filtered export containing only the wiki-compatible content and assets.

### Included in Pages

1. `Home.md`
2. All root-level `de-*.md` and `en-*.md` wiki pages
3. All wiki assets used by those pages
4. German wiki pages from `de/` if they are part of the actual public wiki structure
5. The generated `automation-status.md` page

### Excluded from Pages

1. `instructions/`
2. `notes`
3. repository maintenance files that are not part of the public wiki
4. temporary or generated deployment files

### Language Structure

The Pages site navigation should clearly split content into:

1. German
2. English
3. Automation Status

The homepage should provide two main entry points:

1. German documentation
2. English documentation

---

## Visual and UX Direction

### Hero Background

Use this image as the homepage hero background:

`https://ulisses-spiele.de/wp-content/uploads/2022/04/01_SystemseiteDSA_Banner_1920x594.webp`

Implementation guidance:

1. Do not hotlink the image in production.
2. Download and store it locally under the site assets.
3. Use it only on the homepage hero area.
4. Add a dark overlay so the heading and intro text remain readable.

### Palette Direction

Based on the Ulisses DSA landing pages and banner artwork, the site should use an implementation palette in this direction:

1. Obsidian background: near-black / charcoal
2. Parchment surface: warm desaturated beige for cards and content accents
3. Brass-gold accent: muted gold for links, buttons, and emphasis
4. Deep red accent: restrained burgundy for section highlights or active states
5. Text color: parchment or warm off-white, not pure white

Suggested working palette for implementation:

1. Background: `#11110f`
2. Surface: `#1b1815`
3. Surface-alt: `#26211c`
4. Parchment text: `#e7dcc8`
5. Muted text: `#b8ab95`
6. Brass accent: `#b8924a`
7. Deep red accent: `#6c2f2a`
8. Overlay: `rgba(8, 7, 6, 0.62)` to `rgba(8, 7, 6, 0.78)`

These should be treated as implementation colors inspired by Ulisses visual direction, not as official brand tokens.

### Layout Inspiration from Ulisses

The site should borrow broad layout ideas from Ulisses pages:

1. Strong image-led hero at the top
2. Large, confident title area
3. Clear segmented content blocks
4. Editorial fantasy tone instead of flat technical-docs styling

The site should not mimic the Ulisses site literally. It should stay optimized for docs reading.

### Homepage Content

The homepage should include:

1. Hero title: `DSA5 Foundry VTT Wiki`
2. Short neutral description explaining that the site documents features, workflows, automation coverage, and module usage for the Foundry VTT implementation of DSA5 / The Dark Eye 5
3. Clear links into German and English documentation
4. Link to the main Ulisses DSA page in German
5. Link to the confirmed Ulisses English VTT page
6. Optional short note that the site complements the GitHub wiki with better navigation and presentation

---

## Ulisses Reference Links

Use these links on the homepage:

1. German DSA page: `https://ulisses-spiele.de/game-system/das-schwarze-auge/`
2. English VTT page: `https://ulisses-us.com/ulisses-virtual-tabletops/virtual-tabletop-dsa-vtt/`

---

## Additional Generated Page: Automation Status

### Goal

The site should include an additional page named `automation-status` that provides a better overview of what each module contains and how much of it is automated.

### Source Inputs

Primary inputs:

1. `../../foundry14/lazy/module_contents_index.json`
2. `../../foundry14/lazy/module_contents.json.gz`
3. `../../foundry14/lazy/expansions_de.json`
4. `../../foundry14/lazy/expansions_en.json`

Verified observations:

1. `module_contents_index.json` contains per-module summary data such as tracked counts, automated counts, category counts, and percentages.
2. `module_contents.json.gz` should be treated as the richer detailed source for module content breakdowns.
3. `expansions_de.json` contains German module labels, descriptions, and store links.
4. `expansions_en.json` contains English module labels, descriptions, and store links.

### Generation Requirements

The generated page should:

1. Summarize modules and automation coverage in a readable table.
2. Prefer `module_contents_index.json` for fast summary generation.
3. Use `module_contents.json.gz` when deeper detail is needed.
4. Use `expansions_de.json` and `expansions_en.json` to localize module names, descriptions, and external links where possible.
5. Explain what "automated" means in plain language.
6. Support German and English presentation, either in one bilingual page or localized variants generated from the same data.

### Placement

The page should appear in top-level site navigation as:

1. Automation Status

### Build Constraint

Because publishing is manual, it is acceptable for the generation script to depend on sibling repositories being present on the local machine.

The publish script should fail with a clear message if those sibling paths are missing.

---

## Manual Publish Workflow

One command should perform the complete manual publish process.

Recommended command target:

1. `scripts/publish.sh`

### Responsibilities

#### Step 1: Preflight

1. Confirm `git`, `ruby`, `bundle`, and Jekyll dependencies are installed.
2. Confirm the wiki remote `new-origin` exists.
3. Confirm the working tree is clean enough for a deployment.
4. Confirm the sibling automation data sources exist if automation-status generation is enabled.

#### Step 2: Push Wiki

1. Prepare a filtered wiki export that contains only wiki-compatible content.
2. Keep existing wiki-compatible filenames and structure intact.
3. Exclude Jekyll, Pages, planning, and repository-maintenance files from the wiki export.
4. Push that filtered export to the GitHub wiki remote.

Recommended mechanism:

1. Create or update a temporary clone of `new-origin`.
2. Copy only the wiki pages, sidebar/footer files, and required assets into that temporary clone.
3. Remove files in the temporary clone that are no longer part of the wiki export.
4. Commit and push from that temporary clone to `new-origin`.

Explicit non-goal:

1. Do not use direct branch mirroring from this repository to the wiki remote after Pages support is added.

#### Step 3: Prepare Docs Site

1. Recreate `docs/` from scratch.
2. Copy all public German and English wiki pages into `docs/`.
3. Exclude `instructions/`, planning docs, and local notes.
4. Copy required image assets.
5. Generate the homepage.
6. Generate `automation-status.md`.
7. Generate localized automation status content from the JSON sources.
8. Rewrite links and paths where needed for Jekyll pages and navigation.

#### Step 4: Build Site

1. Run `bundle exec jekyll build`
2. Validate the output structure.

#### Step 5: Publish Site

1. Build the static site with Jekyll.
2. Publish the generated output to the `gh-pages` branch.
3. Leave deployment manual and operator-driven.

---

## Repository Additions Needed

### Core Build Files

1. `_config.yml`
2. `Gemfile`
3. `Gemfile.lock`
3. `scripts/publish.sh`
4. `scripts/prepare_docs.rb`
5. `scripts/generate_automation_status.rb`
6. temporary wiki export logic as part of the publish workflow

### Site Files

1. `docs/`
2. `docs/index.md` generated during prep
3. `docs/automation-status.md` generated during prep
4. `docs/assets/images/`
5. `docs/assets/stylesheets/extra.css`
6. `overrides/` for homepage or theme template customization if needed

### Stored Assets

1. local copy of the hero background image
2. no logo or favicon assets are required for the first implementation

---

## Implementation Phases

### Phase 1: Foundation and Build Skeleton

Goal: establish the Pages toolchain and a reproducible local build.

Deliverables:

1. Add Jekyll and Bundler dependencies.
2. Add `_config.yml`.
3. Add a minimal Ruby docs preparation script.
4. Build a local Pages prototype from the wiki content.
5. Confirm the final site base URL matches the repository Pages URL.

### Phase 2: Content Preparation and Navigation

Goal: build the real docs structure from the wiki source.

Deliverables:

1. Copy both German and English wiki pages into `docs/`.
2. Exclude planning and repository-only files.
3. Create clear German and English navigation groups.
4. Preserve or normalize image paths.
5. Ensure all wiki pages are reachable from the Pages site.

### Phase 3: Homepage and Visual Theme

Goal: give the site the intended dark fantasy presentation.

Deliverables:

1. Add the local hero background asset.
2. Add the dark overlay.
3. Implement the dark parchment palette.
4. Create the homepage description and call-to-action links.
5. Add German and English Ulisses reference links.
6. Tune readability for both mobile and desktop.

### Phase 4: Automation Status Generation

Goal: add the extra generated page with useful module automation information.

Deliverables:

1. Read `module_contents_index.json` from `../../foundry14/lazy/`.
2. Read detailed data from `module_contents.json.gz` when needed.
3. Read localized metadata from `expansions_de.json` and `expansions_en.json`.
4. Generate `docs/automation-status.md`.
5. Add the page to site navigation.
6. Fail clearly when the sibling data sources are missing.

### Phase 5: Manual Publish Script

Goal: unify wiki push and Pages deploy into one operator command.

Deliverables:

1. Export only wiki-compatible content to a temporary wiki checkout.
2. Prepare the Pages docs build.
3. Build the site.
4. Push the filtered wiki export to `new-origin`.
5. Deploy to `gh-pages`.
6. Document the manual publish command in the repository.

### Phase 6: Polish and Validation

Goal: harden the workflow and finalize presentation.

Deliverables:

1. Check internal links.
2. Check image rendering.
3. Check navigation completeness.
4. Check homepage readability over the hero image.
5. Confirm the public Pages URL is working.

---

## Acceptance Criteria

This effort is complete when:

1. One manual command publishes the wiki and the Pages site.
2. The Pages site publishes to `gh-pages` and is reachable at the repository Pages URL.
3. The Pages site includes all public German and English wiki pages.
4. Internal planning files are excluded.
5. The wiki remote receives only wiki-compatible content and does not receive Pages build/config files.
6. The homepage uses the hero background with a dark overlay and appropriate introductory copy.
7. The site has a dark parchment fantasy look with good readability.
8. The site includes the generated `automation-status` page.
9. The workflow is reproducible on a local machine with the required sibling repositories present.
10. The homepage uses a neutral technical documentation tone.
11. No logo or favicon work is required for the first implementation.

---

## Remaining Decisions Needed

No blocking product decisions remain in the plan.

Implementation may still choose between two equivalent presentation options for `automation-status`:

1. a single bilingual page
2. separate German and English pages generated from the same JSON sources

---

## Concrete Recommendation

If the goal is the fastest path to a maintainable result, use this stack:

1. This repository as the markdown source.
2. Jekyll plus Ruby scripts for the pretty docs site.
3. A `scripts/publish.sh` script for dual publish.
4. A curated `docs/` directory generated from the repository content.
5. Optional GitHub Actions later, after the local workflow works reliably.

---

## Next Practical Step

The next implementation task should be:

1. Create a minimal Jekyll prototype from a subset of the current docs.
2. Add a first homepage with placeholder styling.
3. Decide whether the Pages target is `username.github.io` or `gh-pages`.
4. Then implement the dual publish script around that structure.
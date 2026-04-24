---
layout: default
title: en-bezahlsystem
---
# Payment System

*Last updated: 01.2025*

The DSA5 system offers an automated payment system that allows players and Game Masters to easily manage money amounts. Payments can be made via chat commands or the GM Menu.

![Payment in Chat](images/en-payment-chat.webp)

## Chat Commands for Payments

### Request Payment

```
/pay [Amount]
```

Creates a payment request in chat. Players can click the button to pay the amount.

**Examples:**
- `/pay 5` - 5 Silver Thalers
- `/pay 2.5` - 2 Silver Thalers, 5 Farthings
- `/pay 10 (Lodging)` - With description

### Give Money

```
/getPaid [Amount]
```

Creates a message through which players can receive money.

**Examples:**
- `/getPaid 100` - 100 Silver Thalers reward
- `/getPaid 50 (Quest Reward)` - With description

## The Payment Message

After a chat command, a message appears with:

- **Amount**: The amount to be paid/received
- **Description**: Optional, specified in parentheses
- **Button**: "Pay" or "Receive"

![Payment Button](images/en-payment-button.webp)

### Making a Payment

1. Click the **Button** in the chat message
2. The system checks if enough money is available
3. On success, money is automatically deducted/added
4. A confirmation appears in chat
5. The button disappears for you

### Not Enough Money

If a character doesn't have enough money:
- A warning is displayed
- The payment is **not** processed
- The button remains active

## Payments via GM Menu

As a Game Master, you can process payments through the GM Menu:

### Deduct Money from Players

1. Open the **GM Menu** (key **M**)
2. Select the affected characters
3. Click **Collect** (coin icon with minus)
4. Enter the amount
5. Confirm the payment

### Distribute Money to Players

1. Open the **GM Menu**
2. Select the receiving characters
3. Click **Pay Out** (coin icon with plus)
4. Enter the amount
5. Confirm the payout

![GM Menu Payment](images/en-payment-gm.webp)

## Automatic Currency Conversion

The system automatically handles currency conversion:

| Currency | Value in Silver |
|----------|-----------------|
| Ducat | 10 Silver |
| Silver Thaler | 1 Silver |
| Farthing | 0.1 Silver |
| Penny | 0.01 Silver |

When paying, the system will:
- Use larger denominations first
- Break down coins as needed
- Display the equivalent in your currency setting

## Integration with Money Tracker

If the Money Tracker is enabled:
- All payments are logged automatically
- View payment history in the character's tracker journal
- See [AP and Money Tracker](/dsa5-foundryVTT-wiki/en-tracker-ap-geld) for details

## Tips

- **Descriptions**: Always add descriptions for record-keeping
- **Group Payments**: Use GM Menu for efficient group distributions
- **Currency Display**: Check system settings for currency display preferences
- **Audit Trail**: Enable Money Tracker for complete transaction history

---

**See also:**
- [GM Menu](/dsa5-foundryVTT-wiki/en-meister-menue)
- [Trading](/dsa5-foundryVTT-wiki/en-handel-tausch)
- [AP and Money Tracker](/dsa5-foundryVTT-wiki/en-tracker-ap-geld)
- [Chat Commands](/dsa5-foundryVTT-wiki/en-chatbefehle)

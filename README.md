# AmazonScheduleFinder
This is a power shell script to notify you of open schedules for Amazon Whole Food Delivery.  The script will keep trying to find a slot available for delivery every 5 minutes.  Once a schedule is found window will beep (turn your computer sound on!) and you will see a prompt on the console saying: Schedule Found at [Time].

**Note** This is tested to only work in the east coast in the U.S. Make sure you see the same screen as the screenshot below. 

## Requirement:
1. Window Machine (using Internet Explorer...I know this is basic version for now :) )
2. You must enable permission to run power shell.  See instruction below
3. This only works after you have already logged into your Amazon account and with everything selected in your cart and you must already see the below screen:

![alt tag](screen.jpg "Screen shot of check out")

### Instruction to set up Power Shell:
*Use below to temporarily bypass Execution Policy.  Make sure to run below in separate PowerShell App as Admin*

Set-ExecutionPolicy -ExecutionPolicy ByPass -Scope Process -Force
 
 
 ### How to run
  1. Download AmazonScheduleFinder.ps1
  2. Run with PowerShell.

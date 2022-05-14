*** Settings ***
Resource  ../resources/imports.robot
Suite Setup  setup chromedriver
Test Setup  open Google Chrome browswer
Test Teardown  close browser

*** Test Cases ***
TCC001 - Verify default of "Todo list" home page
  maximize browser window
  home page should be open

TCC002 - Default with new using to do list website on "ADD ITEM" tab
  maximize browser window
  home page should be open
  add item tap with default

TCC003 - Default with new using to do list website on "TO-DO TASKS" tab
  maximize browser window
  home page should be open
  to do tasks tap with default

TCC004 - Default with new using to do list website on "COMPLETED" tab
  maximize browser window
  home page should be open
  completed tap with default

TCC005 - Add item(s) into the list
  maximize browser window
  home page should be open
  add item(s) into the list  ${first_item}
  add item(s) into the list  ${second_item}
  add item(s) into the list  ${third_item}
  check first item added on the list  ${first_item}
  check second item added on the list  ${second_item}
  check third item added on the list  ${third_item}

TCC006 - Completed all to do tasks on the list
  maximize browser window
  home page should be open
  add item(s) into the list  ${first_item}
  add item(s) into the list  ${second_item}
  add item(s) into the list  ${third_item}
  check first item added on the list  ${first_item}
  check second item added on the list  ${second_item}
  check third item added on the list  ${third_item}
  click to complete some to do on the list
  click to complete some to do on the list
  click to complete all to do on the list
  check all completed to do task  ${completed_first}  ${completed_second}  ${completed_third}

TCC007 - Completed some to do tasks on the list
  maximize browser window
  home page should be open
  add item(s) into the list  ${first_item}
  add item(s) into the list  ${second_item}
  add item(s) into the list  ${third_item}
  check first item added on the list  ${first_item}
  check second item added on the list  ${second_item}
  check third item added on the list  ${third_item}
  click to complete some to do on the list
  click to complete some to do on the list
  check some completed to do task  ${completed_first}  ${completed_second}

TC008 - Delete some item on to do list
  maximize browser window
  home page should be open
  add item(s) into the list  ${first_item}
  add item(s) into the list  ${second_item}
  add item(s) into the list  ${third_item}
  check first item added on the list  ${first_item}
  check second item added on the list  ${second_item}
  check third item added on the list  ${third_item}
  click delete item(s) on the to do list
  click delete item(s) on the to do list
  check remianing item on the list  ${third_item}

TC008 - Delete all item on to do list
  maximize browser window
  home page should be open
  add item(s) into the list  ${first_item}
  add item(s) into the list  ${second_item}
  add item(s) into the list  ${third_item}
  check first item added on the list  ${first_item}
  check second item added on the list  ${second_item}
  check third item added on the list  ${third_item}
  click delete item(s) on the to do list
  click delete item(s) on the to do list
  click delete item(s) on the to do list
  to do tasks tap with default

TCC009 - Delete some item(s) on the complete list
  maximize browser window
  home page should be open
  add item(s) into the list  ${first_item}
  add item(s) into the list  ${second_item}
  add item(s) into the list  ${third_item}
  check first item added on the list  ${first_item}
  check second item added on the list  ${second_item}
  check third item added on the list  ${third_item}
  click to complete some to do on the list
  click to complete some to do on the list
  click to complete all to do on the list
  check all completed to do task  ${completed_first}  ${completed_second}  ${completed_third}
  click delete item(s) on the completed list
  check some completed to do task  ${completed_second}  ${completed_third}

TCC010 - Delete all item(s) on the complete list
  maximize browser window
  home page should be open
  add item(s) into the list  ${first_item}
  add item(s) into the list  ${second_item}
  add item(s) into the list  ${third_item}
  check first item added on the list  ${first_item}
  check second item added on the list  ${second_item}
  check third item added on the list  ${third_item}
  click to complete some to do on the list
  click to complete some to do on the list
  click to complete all to do on the list
  check all completed to do task  ${completed_first}  ${completed_second}  ${completed_third}
  click delete item(s) on the completed list
  click delete second item(s) on the completed list
  click delete second item(s) on the completed list
  completed tap with default

TCC011 - Can add a duplicate item(s) and completed
  maximize browser window
  home page should be open
  add item(s) into the list  ${duplicate_item}
  add item(s) into the list  ${duplicate_item}
  add item(s) into the list  ${duplicate_item}
  check first item added on the list  ${duplicate_item}
  check second item added on the list  ${duplicate_item}
  check third item added on the list  ${duplicate_item}
  click to complete some to do on the list
  click to complete some to do on the list
  click to complete all to do on the list
  check all completed to do task  ${completed_duplicate}  ${completed_duplicate}  ${completed_duplicate}

TCC012 - Can add spacial character
  maximize browser window
  home page should be open
  add item(s) into the list  ${special_character}
  check item added on the list  ${special_character}

TCC013 - Can add spacial character
  maximize browser window
  home page should be open
  add item(s) into the list  ${text_num}
  check item added on the list  ${text_num}
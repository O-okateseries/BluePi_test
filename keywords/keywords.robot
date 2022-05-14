*** Keywords ***
setup chromedriver
  set environment variable  webdriver.chrome.driver  ${EXECDIR}/chromedriver.exe

open Google Chrome browswer
  open browser  https://abhigyank.github.io/To-Do-List/  Chrome

home page should be open
  element text should be  xpath://html/body/div/h1  TO DO LIST
  page should contain element  xpath://html/body/div/div/div[1]/a[1]/span
  element text should be  xpath://html/body/div/div/div[1]/a[1]  ADD ITEM
  page should contain element  xpath://html/body/div/div/div[1]/a[2]/span
  element text should be  xpath://html/body/div/div/div[1]/a[2]  TO-DO TASKS
  page should contain element  xpath://html/body/div/div/div[1]/a[3]/span
  element text should be  xpath://html/body/div/div/div[1]/a[3]  COMPLETED
  page should contain element  xpath://*[@id="new-task"]
  page should contain element  xpath://*[@id="add-item"]/button

add item tap with default
  click element  xpath://html/body/div/div/div[1]/a[1]/span
  page should contain element  xpath://*[@id="new-task"]
  page should contain element  xpath://*[@id="add-item"]/button

to do tasks tap with default
  click element  xpath://html/body/div/div/div[1]/a[2]/span
  page should not contain  xpath://*[@id="incomplete-tasks"]/li/label
  page should not contain  xpath://*[@id="1"]

completed tap with default
  click element  xpath://html/body/div/div/div[1]/a[3]/span
  page should not contain  xpath://*[@id="completed-tasks"]/li

add item(s) into the list
  [Arguments]  ${items}
  input text  xpath://*[@id="new-task"]  ${items}
  click button  xpath://*[@id="add-item"]/button

check first item added on the list
  [Arguments]  ${items}
  click element  xpath://html/body/div/div/div[1]/a[2]/span
  page should contain element  xpath://*[@id="incomplete-tasks"]/li[1]/label
  element text should be  xpath://*[@id="text-1"]  ${items}

check second item added on the list
  [Arguments]  ${items}
  page should contain element  xpath://*[@id="incomplete-tasks"]/li[2]/label
  element text should be  xpath://*[@id="text-2"]  ${items}

check third item added on the list
  [Arguments]  ${items}
  page should contain element  xpath://*[@id="incomplete-tasks"]/li[3]/label
  element text should be  xpath://*[@id="text-3"]  ${items}

check remianing item on the list
  [Arguments]  ${items}
  page should contain element  xpath://*[@id="incomplete-tasks"]/li/label
  element text should be  xpath://*[@id="text-1"]  ${items}

check item added on the list
  [Arguments]  ${items}
  click element  xpath://html/body/div/div/div[1]/a[2]/span
  page should contain element  xpath://*[@id="incomplete-tasks"]/li/label
  element text should be  xpath://*[@id="text-1"]  ${items}

click to complete some to do on the list
  click element  xpath://*[@id="incomplete-tasks"]/li[1]/label

click to complete all to do on the list
  click element  xpath://*[@id="incomplete-tasks"]/li/label

check some completed to do task
  [Arguments]  ${items_01}  ${item_02}
  click element  xpath://html/body/div/div/div[1]/a[3]/span
  element text should be  xpath://*[@id="completed-tasks"]/li[1]/span  ${items_01}
  page should contain element  xpath://*[@id="1"]
  element text should be  xpath://*[@id="completed-tasks"]/li[2]/span  ${item_02}
  page should contain element  xpath://*[@id="2"]

check all completed to do task
  [Arguments]  ${items_01}  ${item_02}  ${item_03}
  click element  xpath://html/body/div/div/div[1]/a[3]/span
  element text should be  xpath://*[@id="completed-tasks"]/li[1]/span  ${items_01}
  page should contain element  xpath://*[@id="1"]
  element text should be  xpath://*[@id="completed-tasks"]/li[2]/span  ${item_02}
  page should contain element  xpath://*[@id="2"]
  element text should be  xpath://*[@id="completed-tasks"]/li[3]/span  ${item_03}
  page should contain element  xpath://*[@id="3"]

click delete item(s) on the to do list
  click element  xpath://*[@id="1"]/span

click delete item(s) on the completed list
  click element  xpath://*[@id="1"]/span

click delete second item(s) on the completed list
  click element  xpath://*[@id="1"]
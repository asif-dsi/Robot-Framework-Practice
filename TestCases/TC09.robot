*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resource.robot

*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/

*** Test Cases ***
HTML Table
    launch browser
    ${rows}=    get element count  xpath://table[@name="BookTable"]/tbody/tr
    ${columns}=    get element count  xpath://table[@name="BookTable"]/tbody/tr[2]/td

    log to console  Total Rows are ${rows}
    log to console  Total Columns are ${columns}

    ${data}=    get text    xpath://table[@name="BookTable"]/tbody/tr[4]/td[3]
    log to console  ${data}

    table column should contain  xpath://table[@name="BookTable"]   3   JAVA
    table row should contain  xpath://table[@name="BookTable"]  6   2000
    table cell should contain  xpath://table[@name="BookTable"]     4   2   Animesh
    table header should contain  xpath://table[@name="BookTable"]   Price

    close browser
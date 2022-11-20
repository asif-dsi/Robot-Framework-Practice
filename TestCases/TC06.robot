*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Mouse Click Actions
    open browser  https://demoqa.com/buttons    chrome
    maximize browser window
    double click element  id:doubleClickBtn
    wait until page contains element  id:doubleClickMessage
    ${Double_Click}=    get text  Id:doubleClickMessage
    log to console  ${Double_Click}

    sleep  3
    open context menu  id:rightClickBtn
    wait until page contains element  id:rightClickMessage
    ${Right_Click}=    get text  Id:rightClickMessage
    log to console  ${Right_Click}
    sleep  3

    go to  https://demoqa.com/droppable
    drag and drop  id:draggable     id:droppable
    ${Drag_Drop}=    get text  xpath://p[normalize-space()='Dropped!']
    log to console  ${Drag_Drop}
    sleep  3

    close browser
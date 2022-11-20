*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Handle Alert
    open browser  https://testautomationpractice.blogspot.com/  chrome
    maximize browser window
    click element  xpath://button[@onclick='myFunction()']
#    alert should be present  Press a button!
    sleep  3
    handle alert  accept
#    handle alert  dismiss
#    handle alert  leave

    close browser

Handle iFrame
    open browser  https://demoqa.com/frames  chrome
    maximize browser window
    select frame  frame1
    element text should be  id:sampleHeading  This is a sample page
    unselect frame
    sleep  3
    select frame  frame2
    element text should be  id:sampleHeading  This is a sample page
    unselect frame

    close browser
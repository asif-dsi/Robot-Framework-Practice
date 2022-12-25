*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
New Tab
    open browser  https://www.startech.com.bd/  chrome
    maximize browser window
    click link  css:a[title='Facebook']
    sleep  3
#    select window  url:https://www.facebook.com/star.tech.ltd/
    switch window    url:https://www.facebook.com/star.tech.ltd/
    sleep  3
#    select window  url:https://www.startech.com.bd/
    switch window    url:https://www.startech.com.bd/
    sleep  3
    close browser

New Window
    open browser    https://www.encodedna.com/javascript/demo/open-new-window-using-javascript-method.htm  chrome
    maximize browser window
    click button    xpath://input[@value='Open a new window']
    switch window    title:Open a New Window using JavaScript window.open() - Demo
    sleep    2
    switch window    title:Open a New Browser Window using JavaScript - Demo
    sleep    2
    close browser


New Window With Handles
    open browser    https://www.encodedna.com/javascript/demo/open-new-window-using-javascript-method.htm  chrome
    maximize browser window
    click button    xpath://input[@value='Open a new window']
    ${handles}=    get window handles
    switch window    ${handles}[1]
    sleep    2
    switch window    ${handles}[0]
    sleep    2
    close browser

Navigate Between Pages
    open browser    https://www.youtube.com/    chrome
    maximize browser window
    ${location}=    get location
    log to console  ${location}
    sleep   3

    go to  https://www.amazon.com/
    maximize browser window
    ${location}=    get location
    log to console  ${location}
    sleep   3

    go back
    maximize browser window
    ${location}=    get location
    log to console  ${location}
    sleep   3

    close browser
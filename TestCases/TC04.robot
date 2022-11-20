*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
New Tab
    open browser  https://www.startech.com.bd/  chrome
    maximize browser window
    click link  css:a[title='Facebook']
    sleep  3
    select window  url:https://www.facebook.com/star.tech.ltd/
    sleep  3
    select window  url:https://www.startech.com.bd/
    sleep  3
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
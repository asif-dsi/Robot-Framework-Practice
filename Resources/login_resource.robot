*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.saucedemo.com/

*** Keywords ***
Launch Browser
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  1

Close Browser
    close all browsers

Open Login Page
    go to   ${url}

Input Username
    [Arguments]  ${username}
    input text      id:user-name    ${username}

Input Password
    [Arguments]  ${pass}
    input text      id:password     ${pass}

Submit
    click element  id:login-button

Logout
    click element  id:react-burger-menu-btn
    click element  id:logout_sidebar_link




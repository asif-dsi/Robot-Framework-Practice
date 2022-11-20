*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Keywords ***
Launch Browser
    open browser    ${url}  ${browser}
    maximize browser window
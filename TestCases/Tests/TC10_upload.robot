*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Upload A File
    open browser    https://demoqa.com/upload-download      chrome
    choose file    xpath://input[@id='uploadFile']      C:\\Users\\Asif\\Desktop\\access.png
    sleep    3
    close browser
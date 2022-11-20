*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Capture Screenshot To Root Folder
    open browser  https://www.amazon.com/   chrome
    maximize browser window

    capture element screenshot  id:nav-logo-sprites
    capture page screenshot  amazonpage.png

    close browser

Capture Screenshot To Any Directory
    open browser  https://www.amazon.com/   chrome
    maximize browser window

    capture element screenshot  id:nav-logo-sprites     C:/Users/Asif/Desktop/Practice/Python/Capture ss/amazonlogo.png
    capture page screenshot  C:/Users/Asif/Desktop/Practice/Python/Capture ss/amazonpage.png

    close browser
*** Settings ***
Library  SeleniumLibrary
Library  MyCode.py

*** Test Cases ***
Launching the browser with webdrivermanager
    ${driver_path}=    MyCode.get_driver_path_with_browser        Firefox
    Open Browser          https://www.youtube.com/         firefox       executable_path=${driver_path}
    Go to    https://www.youtube.com/
    Close Browser
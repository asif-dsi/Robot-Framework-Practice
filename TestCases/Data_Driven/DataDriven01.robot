*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/login_resource.robot
Suite Setup  Launch Browser
Suite Teardown  Close Browser
Test Template   Valid Login


*** Test Cases ***  UserName            Password
Login To System     standard_user       secret_sauce



*** Keywords ***
Valid Login
    [Arguments]  ${username}    ${password}
    Input Username  ${username}
    Input Password  ${password}
    Submit
    Logout
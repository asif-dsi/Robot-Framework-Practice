*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Login_Resource.robot
Suite Setup  Launch Browser
Suite Teardown  Close Browser
Test Template   Invalid Login


*** Test Cases ***                          UserName                    Password                Error Message
Blank Username and Blank Password           ${EMPTY}                    ${EMPTY}                Epic sadface: Username is required
Username and Blank Password                 abcd                        ${EMPTY}                Epic sadface: Password is required
Valid Username and Invalid Password         standard_user               abcd                    Epic sadface: Username and password do not match any user in this service
Invalid Username and Valid Password         abcd                        secret_sauce            Epic sadface: Username and password do not match any user in this service
Locked Out user                             locked_out_user             secret_sauce            Epic sadface: Sorry, this user has been locked out.




*** Keywords ***
Invalid Login
    [Arguments]  ${username}    ${password}     ${errortext}
    Input Username  ${username}
    Input Password  ${password}
    Submit
#    sleep   1
    Error Message should be  ${errortext}

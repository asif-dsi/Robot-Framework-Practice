*** Settings ***
Library  SeleniumLibrary
Resource  ../Pages/doRegistration.robot
Resource  ../Environment/Setup.robot
Suite Setup  Open My Browser
Suite Teardown  Close My Browsers

*** Variables ***
${FirstName}    Mikasa
${Email}     mikasa@aot1.com
*** Test Cases ***
User Registration
#    open my browser
    create new user to register  ${FirstName}   ${Email}
    Input Password  1234
    Input First Name  Mikasa
    Input Last Name   Ackerman
    Input Address  Dhaka-1205
    Select A Country  United States
    Input State  Arizona
    Input City  Chicago
    Input Zipcode  12345
    Input Mobile Number  123456789
    click create account button
    Assert Success

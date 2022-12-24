*** Settings ***
Library  SeleniumLibrary
Library  FakerLibrary  WITH NAME  faker
Resource  ../Pages/doRegistration.robot
Resource  ../Environment/Setup.robot
Suite Setup  Open My Browser
Suite Teardown  Close My Browsers

*** Variables ***
${FirstName}    Robot

*** Test Cases ***
User Registration
#    open my browser
    ${fakeEmail}=  faker.email
    ${fakeFirstName}=  faker.First Name
    ${fakeLastName}=  faker.Last Name
    create new user to register  ${FirstName}   ${fakeEmail}
    Input Password  1234
    Input First Name  ${fakeFirstName}
    Input Last Name   ${fakeLastName}
    Input Address  Dhaka-1208
    Select A Country  United States
    Input State  Arizona
    Input City  Chicago
    Input Zipcode  12345
    Input Mobile Number  123456789
    click create account button
    Assert Success

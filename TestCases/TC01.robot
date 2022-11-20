*** Settings ***
Library  SeleniumLibrary
Library  FakerLibrary  WITH NAME  faker
Resource  ../Resources/Resource.robot

*** Test Cases ***
Sign Up
    Launch Browser
#    set selenium speed  0.5
    title should be  nopCommerce demo store
    click element  class:ico-register
    ${fakeFirstName}=  faker.First Name
    log to console  ${fakeFirstName}
    input text  id:FirstName    ${fakeFirstName}
    ${fakeLastName}=  faker.Last Name
    log to console  ${fakeLastName}
    input text  id:LastName     ${fakeLastName}
    ${fakeEmail}=  faker.email
    log to console  ${fakeEmail}
    input text  id:Email     ${fakeEmail}
    click button  id:Newsletter
    input text  id:Password     pass1234
    input text  id:ConfirmPassword     pass1234
    click element   id:register-button
    sleep  2
    close browser




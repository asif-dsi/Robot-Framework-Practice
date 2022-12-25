*** Settings ***
Library  SeleniumLibrary
Library  FakerLibrary  WITH NAME  faker
Default Tags    Ignore

*** Variables ***
${browser}  chrome
${url}  http://automationpractice.com/index.php

*** Test Cases ***
My Store Registration
    open browser  ${url}  ${browser}
    maximize browser window
    set selenium implicit wait  5 seconds
    set selenium timeout  10 seconds
    title should be  My Store
    wait until element is visible   class:login
    click element  class:login
    wait until page contains element  id:email_create
    ${fakeEmail}=  faker.email
    log to console  ${fakeEmail}
    input text  id:email_create  ${fakeEmail}
    wait until page contains element  id:SubmitCreate
    click element  id:SubmitCreate
    sleep  5
    close browser

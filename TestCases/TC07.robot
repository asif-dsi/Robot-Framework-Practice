*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Dropdowns Selection and Iterating On Webelement List
    open browser  https://demo.automationtesting.in/Register.html    chrome
    maximize browser window
    set selenium implicit wait  5 seconds
    set selenium speed  0.5
    select from list by value  Skills   Android
    select from list by label  country  Japan

    select from list by label  yearbox  1996
    select from list by label  xpath://*[@id="basicBootstrapForm"]/div[11]/div[2]/select  August
    select from list by label  daybox   27


    ${elemenets}=    get webelements  class:form-control
    input text  ${elemenets}[0]     Hello
    input text  ${elemenets}[1]     World
    input text  ${elemenets}[2]     Dhaka-1205

    close browser



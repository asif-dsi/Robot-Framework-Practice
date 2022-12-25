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


    @{elements}=    get webelements  class:form-control
    FOR    ${i}    IN RANGE    0    3
       input text  ${elements}[${i}]     Test
       IF    ${i}==1
            input text  ${elements}[${i}]     Hola!
       ELSE IF    ${i}==2
            log to console  Adios!
            exit for loop
       END
    END

    input text  ${elements}[0]     Hello-Replaced
    input text  ${elements}[1]     World-Replaced
    input text  ${elements}[2]     Dhaka-1205

    close browser



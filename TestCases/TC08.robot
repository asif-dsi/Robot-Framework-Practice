*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resource.robot

*** Variables ***
${browser}  chrome
${url}  https://www.amazon.com/blackfriday?ref_=nav_cs_gb

*** Test Cases ***
Scrolling
    launch browser
    maximize browser window
    set selenium speed  1

    scroll element into view    css:img[alt="Samsung QLED and OLED TVs"]

    execute javascript  window.scroll(0,document.body.scrollHeight)   #Scroll to the bottom
    execute javascript  window.scroll(0,-document.body.scrollHeight)  #Scroll to the top

    close browser

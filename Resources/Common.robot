*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Start
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed  0.5 seconds

Finish
    Close All Browsers
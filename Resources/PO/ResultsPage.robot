*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${RESULTS_TITLE} =  Hotels Results
*** Keywords ***
Check
    Title Should Be  ${RESULTS_TITLE}
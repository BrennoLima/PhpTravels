*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LANDING_PAGE_TITLE} =  PHPTRAVELS | Travel Technology Partner
${MY_ACCOUNT} =  xpath=/html/body/div[2]/header/div[1]/div/div/div[2]/div/ul/li[3]/div/a
${LOGIN} =  https://www.phptravels.net/login
${STORE_DATA} =  xpath=//*[@id="usertrack-consent__button"]

*** Keywords ***
Load
    Go To  ${START_URL}

Check
    Title Should Be  ${LANDING_PAGE_TITLE}

Open My Account Tab
    Click Element  ${MY_ACCOUNT}

Open Login Page
    Click Link  ${LOGIN}

Select Store Data
    Click Element  ${STORE_DATA}
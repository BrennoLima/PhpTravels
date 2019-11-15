*** Settings ***
Resource  ../Resources/TravelsApp.robot
Resource  ../Resources/Common.robot
Resource  ../InputData/Data.robot

Test Setup  Start
Test Teardown  Finish

*** Variables ***

*** Test Cases ***
User Should See Login Error Message
    [Tags]  Login
    [Template]  Unlogged User Should Be Able To Attempt Login
    ${UNREGISTERED_USER}
    ${INVALID_PASSWORD_USER}
    ${INVALID_EMAIL_USER}
    ${BLANK_USER}

*** Keywords ***

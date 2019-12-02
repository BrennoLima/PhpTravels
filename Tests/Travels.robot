*** Settings ***
Resource  ../Resources/TravelsApp.robot
Resource  ../Resources/Common.robot
Resource  ../InputData/Data.robot

Test Setup  Start
Test Teardown  Finish

*** Variables ***

*** Test Cases ***
Logged User Should Be Able to Search for a Hotel
    Unlogged User Should Be Able To Attempt Login  ${VALID_USER}
    Logged User Should Be Able To Go To Home Page
    User Should Be Able to Search For Hotel  ${HOTEL_DETAILS}

*** Keywords ***

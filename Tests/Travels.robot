*** Settings ***
Resource  ../Resources/TravelsApp.robot
Resource  ../Resources/Common.robot

Test Setup  Start
Test Teardown  Finish

*** Variables ***

*** Test Cases ***
Logged User Should Be Able to Search for a Flight
    Unlogged User Should Be Able To Attempt Login  ${VALID_USER}
    Fill Flight Information
*** Keywords ***

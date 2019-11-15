*** Settings ***
Resource  ../Resources/TravelsApp.robot
Resource  ../Resources/Common.robot
Resource  ../InputData/Data.robot

Test Setup  Start
Test Teardown  Finish

*** Variables ***

*** Test Cases ***
Logged User Should Be Able Check Functionalities
    Unlogged User Should Be Able To Attempt Login  ${VALID_USER}
    Logged User Should Be Able to Check Bookings
    Logged User Should Be Able to Check Profile
    Logged User Should Be Able to Check Wishlist
    Logged User Should Be Able to Check Newsletter

*** Keywords ***

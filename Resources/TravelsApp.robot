*** Settings ***
Resource  PO/LandingPage.robot
Resource  PO/LoginPage.robot

*** Variables ***

*** Keywords ***
Unlogged User Should Be Able To Open Login Page
    LandingPage.Load
    LandingPage.Check
    LandingPage.Select Store Data
    LandingPage.Open My Account Tab
    LandingPage.Open Login Page
    LoginPage.Check

Unlogged User Should Be Able To Attempt Login
    [Arguments]  ${CREDENTIALS}
    Unlogged User Should Be Able To Open Login Page
    LoginPage.Fill Credentials and Login  ${CREDENTIALS}





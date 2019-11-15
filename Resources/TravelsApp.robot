*** Settings ***
Resource  PO/LandingPage.robot
Resource  PO/LoginPage.robot
Resource  PO/UserPage.robot

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

Logged User Should Be Able to Check Bookings
    UserPage.Open Bookings

Logged User Should Be Able to Check Profile
    UserPage.Open Profile

Logged User Should Be Able to Check Wishlist
    UserPage.Open Wishlist

Logged User Should Be Able to Check Newsletter
    UserPage.Open Newsletter

Fill Flight Information
    SearchPage.Select Flight Class
    SearchPage.Fill Origin
    SearchPage.Fill Destination
    SearchPage.Fill Depart Date
    SearchPage.Fill Return Date
    SearchPage.Click Search Flight Button




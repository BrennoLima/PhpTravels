*** Settings ***
Resource  PO/LandingPage.robot
Resource  PO/LoginPage.robot
Resource  PO/UserPage.robot
Resource  PO/SearchPage.robot
Resource  PO/ResultsPage.robot

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

User Should Be Able to Search For Hotel
    [Arguments]  ${HOTEL_DETAILS}
    User Should Be Able to Fill Hotel Information  ${HOTEL_DETAILS}
    ResultsPage.Check

User Should Be Able to Fill Hotel Information
    [Arguments]  ${HOTEL_DETAILS}
    SearchPage.Open Hotel Search Tab
    SearchPage.Fill Destination  ${HOTEL_DETAILS.destintion}
    SearchPage.Fill Check In  ${HOTEL_DETAILS.checkIn}
    SearchPage.Fill Check Out  ${HOTEL_DETAILS.checkOut}
    SearchPage.Search

Logged User Should Be Able To Go To Home Page
        UserPage.Go to Home Page




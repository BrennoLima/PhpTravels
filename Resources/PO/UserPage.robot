*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${USER_PAGE_TITLE} =  My Account
${BOOKINGS} =  xpath=/html/body/div[2]/div[1]/div[2]/div[2]/div/div[1]/div[1]/aside/nav/ul/li[1]/a
${PROFILE} =  xpath=/html/body/div[2]/div[1]/div[2]/div[2]/div/div[1]/div[1]/aside/nav/ul/li[2]/a
${WISHLIST} =  xpath=/html/body/div[2]/div[1]/div[2]/div[2]/div/div[1]/div[1]/aside/nav/ul/li[3]/a
${NEWSLETTER} =  xpath=/html/body/div[2]/div[1]/div[2]/div[2]/div/div[1]/div[1]/aside/nav/ul/li[4]/a
${FLIGHTS_BUTTON} =  xpath=//*[@id="mobileMenuMain"]/nav/ul/li[3]/a
*** Keywords ***
Check
    Page Title Should Be  ${USER_PAGE_TITLE}

Open Bookings
    Click Element  ${BOOKINGS}
    Page Should Contain  Booking ID

Open Profile
    Click Element  ${PROFILE}
    Page Should Contain  First Name

Open Wishlist
    Click Element  ${WISHLIST}
    Page Should Contain  Wishlist Items

Open Newsletter
    Click Element  ${NEWSLETTER}
    Page Should Contain  Subscribe




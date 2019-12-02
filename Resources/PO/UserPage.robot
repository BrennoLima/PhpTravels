*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${USER_PAGE_TITLE} =  My Account
${BOOKINGS} =  xpath=/html/body/div[2]/div[1]/div[2]/div[2]/div/div[1]/div[1]/aside/nav/ul/li[1]/a
${PROFILE} =  xpath=/html/body/div[2]/div[1]/div[2]/div[2]/div/div[1]/div[1]/aside/nav/ul/li[2]/a
${WISHLIST} =  xpath=/html/body/div[2]/div[1]/div[2]/div[2]/div/div[1]/div[1]/aside/nav/ul/li[3]/a
${NEWSLETTER} =  xpath=/html/body/div[2]/div[1]/div[2]/div[2]/div/div[1]/div[1]/aside/nav/ul/li[4]/a
${FLIGHTS_BUTTON} =  xpath=//*[@id="mobileMenuMain"]/nav/ul/li[3]/a
${WISHLIST_ITEM} =  Hong Kong Island Tour
${HOME_PAGE} =  Home
*** Keywords ***
Check
    Title Should Be  ${USER_PAGE_TITLE}

Open Bookings
    Click Element  ${BOOKINGS}
    Page Should Contain  Booking ID

Open Profile
    Click Element  ${PROFILE}
    Page Should Contain  First Name

Open Wishlist
    Click Element  ${WISHLIST}
    Page Should Contain  ${WISHLIST_ITEM}

Open Newsletter
    Click Element  ${NEWSLETTER}
    Page Should Contain  Subscribe

Go To Home Page
    Click Link  ${HOME_PAGE}


*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SEARCH_PAGE_TITLE} =  PHPTRAVELS | Travel Technology Partner
${DROPDOWN_CLASS} =  xpath=//*[@id="flights"]/div/div/form/div/div[1]/div[2]/div/div/a
${CLASS} =  //*[@id="flights"]/div/div/form/div/div[1]/div[2]/div/div/div/ul/li[1]
${FROM} =  xpath=//*[@id="flights"]/div/div/form/div/div[1]/div[2]/div/div/div/ul/li[1]
${TO} =  xpath=//*[@id="select2-drop"]/div/input
${DEPART} =  xpath=//*[@id="FlightsDateStart"]
${RETURN} =  xpath=//*[@id="FlightsDateEnd"]
${HOTEL_TAB} =  xpath=/html/body/div[2]/div[1]/div[1]/div[3]/div/div/div/div/div/nav/ul/li[1]/a
${DESTINATION_LINK} =  //*[@id="s2id_autogen1"]/a
${CHECKIN_LINK} =  xpath=/html/body/div[2]/div[1]/div[1]/div[3]/div/div/div/div/div/div/div[1]/div/div/form/div/div/div[2]/div/div/div[1]/div/div[2]/input
${CHECKOUT_LINK} =  xpath=/html/body/div[2]/div[1]/div[1]/div[3]/div/div/div/div/div/div/div[1]/div/div/form/div/div/div[2]/div/div/div[2]/div/div[2]/input
${SEARCH_BUTTON} =  xpath=/html/body/div[2]/div[1]/div[1]/div[3]/div/div/div/div/div/div/div[1]/div/div/form/div/div/div[4]/button
*** Keywords ***
Check
    Title Should Be  ${SEARCH_PAGE_TITLE}

Open Hotel Search Tab
    Click Link  ${HOTEL_TAB}

Fill Destination
    [Arguments]  ${destination}
    Press Keys  ${DESTINATION_LINK}  ${destination}  RETURN


SearchPage.Fill Check In
    [Arguments]  ${checkIn}
    Input Text  ${CHECKIN_LINK}  ${checkIn}

SearchPage.Fill Check Out
    [Arguments]  ${checkOut}
    Input Text  ${CHECKOUT_LINK}  ${checkOut}

SearchPage.Search
    Click Button  ${SEARCH_BUTTON}
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

*** Keywords ***
Check
    Page Title Should Be  ${SEARCH_PAGE_TITLE}

Select Flight Class
    Click Element  ${DROPDOWN_CLASS}
    Click Element  ${CLASS}

Fill Depart Date

Fill Return Date

Click Search Flight Button
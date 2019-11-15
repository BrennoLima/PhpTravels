*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${PAGE_LOGIN_TITLE} =  Login
${EMAIL_FIELD} =  username
${PASSWORD_FIELD} =  password
${LOGIN_BUTTON} =  Login

*** Keywords ***
Check
    Title Should Be  ${PAGE_LOGIN_TITLE}

Fill Email
    [Arguments]  ${EMAIL}
    Run Keyword Unless  '${EMAIL}' == '#BLANK'  Input Text  ${EMAIL_FIELD}  ${EMAIL}

Fill Password
    [Arguments]  ${PASSWORD}
    Run Keyword Unless  '${PASSWORD}' == '#BLANK'  Input Text  ${PASSWORD_FIELD}  ${PASSWORD}

Login
    Click Button  ${LOGIN_BUTTON}

Fill Credentials and Login
    [Arguments]  ${CREDENTIALS}
    Fill Email  ${CREDENTIALS.email}
    Fill Password  ${CREDENTIALS.password}
    Login




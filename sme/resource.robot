*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library
Library           SSHLibrary
Library           FtpLibrary

*** Variables ***
${SERVER}         sme9-64.through-ip.com
${BROWSER}        Firefox
${DELAY}          0
${VALID USER}     admin
${VALID PASSWORD}    Admin-Test-1234
${LOGIN URL}      https://${SERVER}/server-manager
${WELCOME URL}    https://${SERVER}/server-manager/
${ERROR URL}      https://${SERVER}/server-common/cgi-bin/login
${USERS URL}      https://${SERVER}/server-manager/cgi-bin/useraccounts

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    SME Server manager

Click Menu 
    [Arguments]    ${menuitem}
    Unselect Frame
    Select Frame    navigation
    Click Link    ${menuitem}
    Unselect Frame
    Select Frame    main

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Input Text    username    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    password    ${password}

Submit Credentials
    Click Button    Login

Open Browser To Welcome Page
    Open Browser    ${WELCOME URL}    ${BROWSER}

Welcome Page Should Be Open
    Location Should Be    ${WELCOME URL}
    Title Should Be    SME Server ${SERVER}

Users Frame Should Be Open
    Location Should Be    ${USERS URL}
    Frame Should Contain    main    "Create, modify, or remove user accounts"

*** Settings ***
Documentation              Valid Logins
Force Tags                 server-manager
Resource                   ../../resource.robot

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username         ${VALID USER}
    Input Password         ${VALID PASSWORD}
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser

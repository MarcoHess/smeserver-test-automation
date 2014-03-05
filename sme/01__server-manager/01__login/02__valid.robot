*** Settings ***
Documentation     Valid login
Resource          ../../resource.robot

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    ${VALID USER}
    Input Password    ${VALID PASSWORD}
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser

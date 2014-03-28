*** Settings ***
Documentation              Invalid Logins
Force Tags                 server-manager
Suite Setup                Open Browser To Login Page
Suite Teardown             Close Browser
Test Setup                 Go To Login Page
Test Template              Login With Invalid Credentials Should Fail
Resource                   ../../resource.robot

*** Test Cases ***               User Name        Password
Invalid Username                 invalid          ${VALID PASSWORD}
Invalid Password                 ${VALID USER}    invalid
Invalid Username And Password    invalid          whatever
Empty Password                   ${VALID USER}    ${EMPTY}

*** Keywords ***
Login With Invalid Credentials Should Fail
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Password    ${password}
    Submit Credentials
    Login Should Have Failed

Login Should Have Failed
    Location Should Be    ${ERROR URL}
    Page Should Contain	Invalid username or password.

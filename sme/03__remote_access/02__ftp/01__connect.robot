*** Settings ***
Documentation     FTP Connect
Resource          ../../resource.robot
Suite Setup       Open Connection And Log In
Suite Teardown    Ftp Close

*** Test Cases ***
Get Welcome Message
    ${output}=    Get Welcome
    send cmd    HELP
    Should Contain  ${output}   220

Get Working Directory
    ${pwdResult}=    pwd

*** Keywords ***
Open Connection And Log In
    Ftp Connect     ${SERVER}  admin  ${VALID PASSWORD}

*** Settings ***
Documentation     Configure remote access in server manager
...               to allow the SSH and FTP tests.
Library           Selenium2Library
Suite Setup       Suite Setup
Suite Teardown    Suite Teardown
Resource          ../resource.robot

*** Keyword ***
Suite Setup
    Open Browser To Login Page
    Input Username    ${VALID USER}
    Input Password    ${VALID PASSWORD}
    Submit Credentials
    Enable SSH Access
    Enable FTP Access

Suite Teardown
    Disable SSH Access
    Disable FTP Access
    Close Browser

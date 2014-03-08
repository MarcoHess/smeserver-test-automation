*** Settings ***
Documentation     Security - Proxy settings
Resource          ../../../resource.robot

*** Test Cases ***
List Proxy Settings
    Click Menu    Proxy settings
    Page Should Contain    Proxy settings


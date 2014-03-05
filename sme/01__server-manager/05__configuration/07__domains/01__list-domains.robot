*** Settings ***
Documentation     Configuration - Domains
Resource          ../../../resource.robot

*** Test Cases ***
List Domains
    Click Menu    Domains
    Page Should Contain    Manage domains
    Page Should Contain    Current list of domains
    Page Should Contain    Corporate DNS Settings


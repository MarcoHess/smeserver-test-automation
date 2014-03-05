*** Settings ***
Documentation     Configuration - Domains
Resource          ../../../resource.robot

*** Test Cases ***
List Domains
    Click Menu    Hostnames and addresses
    Page Should Contain    Hostnames and addresses


*** Settings ***
Documentation     Collaboratin - Quotas
Resource          ../../../resource.robot

*** Test Cases ***
List Quotas
    Click Menu    Quotas
    Page Should Contain    Create, modify, or remove user account quotas


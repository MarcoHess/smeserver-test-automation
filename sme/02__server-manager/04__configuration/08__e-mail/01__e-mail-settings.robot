*** Settings ***
Documentation     Configuration - E-mail
Resource          ../../../resource.robot

*** Test Cases ***
E-mail Settings
    Click Menu    E-mail
    Page Should Contain    E-mail settings


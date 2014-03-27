*** Settings ***
Documentation     Security - Remote access
Resource          ../../../resource.robot

*** Test Cases ***
List Remote Access Setting
    Click Menu    Remote access
    Page Should Contain    Change remote access settings
    
PPTP Settings
    Page Should Contain    Change remote access settings


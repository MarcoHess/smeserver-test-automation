*** Settings ***
Documentation     Administration - Reboot or shutdown
Resource          ../../../resource.robot

*** Test Cases ***
List Reboot or shutdown
    Click Menu    Reboot or shutdown
    Page Should Contain    Shutdown or reboot

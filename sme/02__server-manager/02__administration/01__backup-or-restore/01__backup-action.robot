*** Settings ***
Documentation     Administration - Backup or restore
Resource          ../../../resource.robot

*** Test Cases ***
List Users
    Click Menu    Backup or restore
    Page Should Contain    Backup or restore server data


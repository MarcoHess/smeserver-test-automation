*** Settings ***
Documentation              Configuration - Software installer
Force Tags                 server-manager
...                        configuration
...                        software-installer
Resource                   ../../../resource.robot

*** Test Cases ***
List Available Updates
    Click Menu             Software installer
    Page Should Contain    Check for updates 
    Page Should Contain    Manage individual packages 


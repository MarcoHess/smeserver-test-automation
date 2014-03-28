*** Settings ***
Documentation              Administration - Backup or restore
Force Tags                 server-manager
...                        administration
...                        backup
Resource                   ../../../resource.robot

*** Test Cases ***
List Users
    Click Menu             Backup or restore
    Page Should Contain    Backup or restore server data


*** Settings ***
Documentation              Administration - View log files
Force Tags                 server-manager
...                        administration
...                        logs
Resource                   ../../../resource.robot

*** Test Cases ***
List Users
    Click Menu             View log files
    Page Should Contain    View log files

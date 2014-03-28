*** Settings ***
Documentation              Administration - Mail log file analysis
Force Tags                 server-manager
...                        administration
...                        email
Resource                   ../../../resource.robot

*** Test Cases ***
List Users
    Click Menu             Mail log file analysis
    Page Should Contain    Mail Log File Analysis


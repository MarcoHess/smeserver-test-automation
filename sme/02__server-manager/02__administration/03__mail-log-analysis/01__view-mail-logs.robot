*** Settings ***
Documentation     Administration - Mail log file analysis
Resource          ../../../resource.robot

*** Test Cases ***
List Users
    Click Menu    Mail log file analysis
    Page Should Contain    Mail Log File Analysis


*** Settings ***
Documentation     Security - Port forwarding
Resource          ../../../resource.robot

*** Test Cases ***
List Local Networks
    Click Menu    Port forwarding
    Page Should Contain    Configure Port Forwarding

Add Network
    Click Link In Frame     Create portforwarding rule

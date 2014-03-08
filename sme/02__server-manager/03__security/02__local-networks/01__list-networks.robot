*** Settings ***
Documentation     Security - Local networks
Resource          ../../../resource.robot

*** Test Cases ***
List Local Networks
    Click Menu      Local networks
    Page Should Contain    Local networks

Add Network
    Click Link In Frame	Add network

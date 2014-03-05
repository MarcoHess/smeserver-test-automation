*** Settings ***
Documentation     Security - Port forwarding
Resource          ../../../resource.robot

*** Test Cases ***
List Local Networks
    Unselect Frame
    Select Frame    navigation
    Click Link    Port forwarding
    Unselect Frame
    Select Frame    main
    Page Should Contain    Configure Port Forwarding

Add Network
    Unselect Frame
    Select Frame    main
    Click Link	Create portforwarding rule

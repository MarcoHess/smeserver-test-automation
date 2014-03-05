*** Settings ***
Documentation     Security - Local networks
Resource          ../../../resource.robot

*** Test Cases ***
List Local Networks
    Unselect Frame
    Select Frame    navigation
    Click Link    Local networks
    Unselect Frame
    Select Frame    main
    Page Should Contain    Local networks

Add Network
    Unselect Frame
    Select Frame    main
    Click Link	Add network

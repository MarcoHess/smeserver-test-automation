*** Settings ***
Documentation     Security - Remote access
Resource          ../../../resource.robot

*** Test Cases ***
List Available Updates
    Unselect Frame
    Select Frame    navigation
    Click Link    Remote access
    Unselect Frame
    Select Frame    main
    Page Should Contain    Change remote access settings


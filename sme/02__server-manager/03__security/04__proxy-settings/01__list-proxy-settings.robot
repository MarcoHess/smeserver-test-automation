*** Settings ***
Documentation     Security - Proxy settings
Resource          ../../../resource.robot

*** Test Cases ***
List Proxy Settings
    Unselect Frame
    Select Frame    navigation
    Click Link    Proxy settings
    Unselect Frame
    Select Frame    main
    Page Should Contain    Proxy settings


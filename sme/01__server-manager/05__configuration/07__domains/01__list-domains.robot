*** Settings ***
Documentation     Configuration - Domains
Resource          ../../../resource.robot

*** Test Cases ***
List Domains
    Select Frame    navigation
    Click Link    Domains
    Unselect Frame
    Select Frame    main
    Page Should Contain    Manage domains
    Page Should Contain    Current list of domains
    Page Should Contain    Corporate DNS Settings


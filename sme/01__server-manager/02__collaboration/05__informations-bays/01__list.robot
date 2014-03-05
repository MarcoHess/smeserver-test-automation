*** Settings ***
Documentation     Collaboratin - Informations bays
Resource          ../../../resource.robot

*** Test Cases ***
List Information Bays Page
    Select Frame    navigation
    Click Link    Information bays
    Unselect Frame
    Select Frame    main
    Page Should Contain    Create, modify, or remove i-bays

Add i-bay
    Unselect Frame
    Select Frame    main
    Click Link    Add i-bay
    Page Should Contain    Create or modify an i-bay

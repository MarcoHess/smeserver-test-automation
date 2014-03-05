*** Settings ***
Documentation     Collaboratin - Informations bays
Resource          ../../../resource.robot

*** Test Cases ***
List Information Bays Page
    Click Menu    Information bays
    Page Should Contain    Create, modify, or remove i-bays

Add i-bay
    Unselect Frame
    Select Frame    main
    Click Link    Add i-bay
    Page Should Contain    Create or modify an i-bay

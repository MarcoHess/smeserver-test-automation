*** Settings ***
Documentation     Collaboration Users
Resource          ../../../resource.robot

*** Test Cases ***
List Users
    Select Frame    navigation
    Click Link    Users
    Unselect Frame
    Select Frame    main
    Page Should Contain    Create, modify, or remove user accounts

Add user account
    Unselect Frame
    Select Frame    main
    Click Link    Add user account
    Page Should Contain    Create or modify

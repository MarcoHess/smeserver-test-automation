*** Settings ***
Documentation     Collaboration Groups
Resource          ../../../resource.robot

*** Test Cases ***
List Groups
    Select Frame    navigation
    Click Link    Groups
    Unselect Frame
    Select Frame    main
    Page Should Contain    Create, modify, or remove user groups

Add Group
    Unselect Frame
    Select Frame    main
    Click Link    Add group
    Page Should Contain    Create user group

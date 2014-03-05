*** Settings ***
Documentation     Collaboration Groups
Resource          ../../../resource.robot

*** Test Cases ***
List Groups
    Click Menu    Groups
    Page Should Contain    Create, modify, or remove user groups

Add Group
    Unselect Frame
    Select Frame    main
    Click Link    Add group
    Page Should Contain    Create user group

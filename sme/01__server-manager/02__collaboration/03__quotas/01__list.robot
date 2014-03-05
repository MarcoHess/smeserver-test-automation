*** Settings ***
Documentation     Collaboratin - Quotas
Resource          ../../../resource.robot

*** Test Cases ***
List Quotas
    Select Frame    navigation
    Click Link    Quotas
    Unselect Frame
    Select Frame    main
    Page Should Contain    Create, modify, or remove user account quotas


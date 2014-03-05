*** Settings ***
Documentation     Configuration - E-mail
Resource          ../../../resource.robot

*** Test Cases ***
E-mail Settings
    Select Frame    navigation
    Click Link    E-mail
    Unselect Frame
    Select Frame    main
    Page Should Contain    E-mail settings


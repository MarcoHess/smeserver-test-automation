*** Settings ***
Documentation     Create a starter website
Resource          ../../../resource.robot

*** Test Cases ***
Open Create Starter Web Site Page
    Select Frame    navigation
    Click Link    Create starter web site
    Unselect Frame
    Select Frame    main
    Page Should Contain    Create a starter website

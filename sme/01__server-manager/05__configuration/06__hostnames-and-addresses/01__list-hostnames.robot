*** Settings ***
Documentation     Configuration - Domains
Resource          ../../../resource.robot

*** Test Cases ***
List Domains
    Select Frame    navigation
    Click Link    Hostnames and addresses
    Unselect Frame
    Select Frame    main
    Page Should Contain    Hostnames and addresses


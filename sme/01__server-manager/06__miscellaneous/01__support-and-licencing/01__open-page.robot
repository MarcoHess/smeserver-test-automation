*** Settings ***
Documentation     Check support & licensing info
Resource          ../../../resource.robot

*** Test Cases ***
Open Support and licensing
    Select Frame    navigation
    Click Link    Support and licensing
    Unselect Frame
    Select Frame    main
    Page Should Contain    Support, warranty and licensing information
    Page Should Contain    Koozali Foundation

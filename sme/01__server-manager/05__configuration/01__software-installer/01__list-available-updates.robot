*** Settings ***
Documentation     Configuration - Software installer
Resource          ../../../resource.robot

*** Test Cases ***
List Available Updates
	Unselect Frame
    Select Frame    navigation
    Click Link    Software installer
    Unselect Frame
    Select Frame    main
    Page Should Contain    Check for updates 
    Page Should Contain    Manage individual packages 


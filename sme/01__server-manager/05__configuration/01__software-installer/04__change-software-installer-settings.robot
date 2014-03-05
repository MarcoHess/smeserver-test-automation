*** Settings ***
Documentation     Change software installer settings
Resource          ../../../resource.robot

*** Test Cases ***
Change software installer settings
    Click Menu    Software installer
    Click Link    Change software installer settings
    Unselect Frame
    Select Frame    main
    Page Should Contain    Check for updates
    Click Button	Save
    Page Should Contain    The new settings have been saved.

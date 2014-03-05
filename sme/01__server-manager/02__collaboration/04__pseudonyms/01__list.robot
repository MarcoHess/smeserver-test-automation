*** Settings ***
Documentation     Collaboration - Pseudonyms
Resource          ../../../resource.robot

*** Test Cases ***
List Pseudonyms
    Click Menu    Pseudonyms
    Page Should Contain    Create, modify, or remove pseudonyms

Add Pseudonyms
    Unselect Frame
    Select Frame    main
    Click Link    Add pseudonym
    Page Should Contain    Create a pseudonym

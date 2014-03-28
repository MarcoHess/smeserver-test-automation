*** Settings ***
Documentation              Collaboration - Informations bays
Force Tags                 server-manager
...                        collaboration
...                        ibays
Resource                   ../../../resource.robot

*** Test Cases ***
List Information Bays Page
    Click Menu             Information bays
    Page Should Contain    Create, modify, or remove i-bays

Add i-bay
    Click Menu             Information bays
    Click Link In Frame    Add i-bay
    Page Should Contain    Create or modify an i-bay

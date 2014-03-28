*** Settings ***
Documentation              Collaboration - Pseudonyms
Force Tags                 server-manager
...                        collaboration
...                        pseudonyms
Resource                   ../../../resource.robot

*** Test Cases ***
List Pseudonyms
    Click Menu             Pseudonyms
    Page Should Contain    Create, modify, or remove pseudonyms

Add Pseudonyms
    Click Menu             Pseudonyms
    Click Link In Frame    Add pseudonym
    Page Should Contain    Create a pseudonym

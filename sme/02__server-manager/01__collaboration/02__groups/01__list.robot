*** Settings ***
Documentation              Collaboration Groups
Force Tags                 server-manager
...                        collaboration
...                        groups
Resource                   ../../../resource.robot

*** Test Cases ***
List Groups
    Click Menu             Groups
    Page Should Contain    Create, modify, or remove user groups

Add Group
    Click Menu             Groups
    Click Link In Frame    Add group 
    Page Should Contain    Create user group

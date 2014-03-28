*** Settings ***
Documentation              Collaboration Users
Force Tags                 server-manager
...                        collaboration
...                        users
Resource                   ../../../resource.robot

*** Test Cases ***
List Users
    Click Menu             Users
    Page Should Contain    Create, modify, or remove user accounts

Add user account
    Click Menu             Users
    Click Link In Frame    Add user account
    Page Should Contain    Create or modify

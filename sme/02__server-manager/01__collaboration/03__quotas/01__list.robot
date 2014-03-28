*** Settings ***
Documentation              Collaboration - Quotas
Force Tags                 server-manager
...                        collaboration
...                        quotas
Resource                   ../../../resource.robot

*** Test Cases ***
List Quotas
    Click Menu             Quotas
    Page Should Contain    Create, modify, or remove user account quotas


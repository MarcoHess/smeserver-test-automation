*** Settings ***
Documentation              Security - Proxy settings
Force Tags                 server-manager
...                        security
...                        proxy
Resource                   ../../../resource.robot

*** Test Cases ***
List Proxy Settings
    Click Menu             Proxy settings
    Page Should Contain    Proxy settings


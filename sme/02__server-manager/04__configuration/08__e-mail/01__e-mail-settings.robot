*** Settings ***
Documentation                 Configuration - E-mail
Force Tags                    server-manager
...                           configuration
...                           email
Resource                      ../../../resource.robot

*** Test Cases ***
E-mail Settings
    Click Menu                E-mail
    Page Should Contain       E-mail settings


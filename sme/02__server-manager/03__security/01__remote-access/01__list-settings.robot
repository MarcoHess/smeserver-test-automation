*** Settings ***
Documentation                 Security - Remote access
Force Tags                    server-manager
...                           security
...                           remote-access
...                           ssh
...                           ftp
Resource                      ../../../resource.robot

*** Test Cases ***
List Remote Access Settings
    Click Menu                Remote access
    List Selection Should Be  sshAccess                  No Access
    List Selection Should Be  sshPermitRootLogin         No
    List Selection Should Be  sshPasswordAuthentication  No
    Page Should Contain       Change remote access settings

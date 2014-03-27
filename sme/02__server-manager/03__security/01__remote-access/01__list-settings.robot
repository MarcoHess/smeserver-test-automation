*** Settings ***
Documentation              Security - Remote access
Resource                   ../../../resource.robot

*** Test Cases ***
List Remote Access Settings
    Click Menu                Remote access
    List Selection Should Be  sshAccess                  No Access
    List Selection Should Be  sshPermitRootLogin         No
    List Selection Should Be  sshPasswordAuthentication  No
    Page Should Contain       Change remote access settings

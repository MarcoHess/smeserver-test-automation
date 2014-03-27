*** Settings ***
Documentation              Security - Remote access
Resource                   ../../../resource.robot

*** Test Cases ***
List Remote Access Setting
    Click Menu                Remote access
    Page Should Contain       Change remote access settings
    List Selection Should Be  sshAccess                  No Access
    List Selection Should Be  sshPermitRootLogin         No
    List Selection Should Be  sshPasswordAuthentication  No
    
PPTP Settings
    Page Should Contain    Change remote access settings


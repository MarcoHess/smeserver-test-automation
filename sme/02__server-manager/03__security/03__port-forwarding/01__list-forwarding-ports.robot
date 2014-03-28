*** Settings ***
Documentation              Security - Port forwarding
Force Tags                 server-manager
...                        security
...                        ports
Resource                   ../../../resource.robot

*** Test Cases ***
List Local Forwarding Ports
    Click Menu             Port forwarding
    Page Should Contain    Configure Port Forwarding

Add Forwarding Port
    Click Menu             Port forwarding
    Click Link In Frame     Create portforwarding rule

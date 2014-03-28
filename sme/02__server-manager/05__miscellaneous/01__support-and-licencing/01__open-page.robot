*** Settings ***
Documentation                 Check support & licensing info
Force Tags                    server-manager
...                           miscellaneous
Resource                      ../../../resource.robot

*** Test Cases ***
Open Support and licensing
    Click Menu                Support and licensing
    Page Should Contain       Support, warranty and licensing information
    Page Should Contain       Koozali Foundation

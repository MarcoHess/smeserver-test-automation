*** Settings ***
Documentation                       Configuration - Date and time
Force Tags                          server-manager
...                                 configuration
...                                 datetime
...                                 ntp
Resource                            ../../../resource.robot

*** Test Cases ***
Default NTP Enabled
    Click Menu                      Date and time
    Page Should Contain             Date and time configuration 
    Unselect Frame
    Select Frame    main
    Radio Button Should Be Set To   ntpStatus    enabled
    Page Should Contain Textfield   ntpServer    smeserver.pool.ntp.org 
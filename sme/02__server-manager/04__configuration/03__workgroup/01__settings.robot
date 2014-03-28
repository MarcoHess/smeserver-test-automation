*** Settings ***
Documentation                       Configuration - Workgroup
Force Tags                          server-manager
...                                 configuration
...                                 workgroup
Resource                            ../../../resource.robot

*** Test Cases ***
Default Workgroup Settings
    Click Menu                      Workgroup
    Page Should Contain             Change workgroup settings 
    Unselect Frame
    Select Frame                    main
    Page Should Contain Textfield   Workgroup          sme-server
    Page Should Contain Textfield   ServerName         ${SERVER NAME} 
    List Selection Should Be        ServerRole         No
    List Selection Should Be        RoamingProfiles    No

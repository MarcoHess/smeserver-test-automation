*** Settings ***
Documentation     Change software installer settings
...               Click Button xpath=//input[contains(@type,'submit')]
Resource          ../../../resource.robot

*** Test Cases ***
Change software installer settings
    Click Menu    Software installer
    Click Link In Frame    Change software installer settings
    Select From List    yum_check4updates    Daily
    Select From List    yum_PackageFunctions    Disabled
    Click Button In Frame    Save
    Page Should Contain    The new settings have been saved.
    Click Menu    Software installer
    Wait Until Page Contains    Software installer  60

Check for updates weekly
    Click Menu    Software installer
    Click Link In Frame    Change software installer settings
    List Selection Should Be    yum_check4updates    Daily
    Select From List    yum_check4updates    Weekly
    Click Button In Frame    Save
    Page Should Contain    The new settings have been saved.
    Click Menu    Software installer
    Wait Until Page Contains    Software installer  60
    Click Link In Frame    Change software installer settings
    List Selection Should Be    yum_check4updates    Weekly

Check for updates monthly
    Click Menu    Software installer
    Click Link In Frame    Change software installer settings
    List Selection Should Be    yum_check4updates    Weekly
    Select From List    yum_check4updates    Monthly
    Click Button In Frame    Save
    Page Should Contain    The new settings have been saved.
    Click Menu    Software installer
    Wait Until Page Contains    Software installer  60
    Click Link In Frame    Change software installer settings
    List Selection Should Be    yum_check4updates    Monthly

Check for updates disabled
    Click Menu    Software installer
    Click Link In Frame    Change software installer settings
    List Selection Should Be    yum_check4updates    Monthly
    Select From List    yum_check4updates    Disabled
    Click Button In Frame    Save
    Page Should Contain    The new settings have been saved.
    Click Menu    Software installer
    Wait Until Page Contains    Software installer  60
    Click Link In Frame    Change software installer settings
    List Selection Should Be    yum_check4updates    Disabled

Check for updates reset Daily
    Click Menu    Software installer
    Click Link In Frame    Change software installer settings
    List Selection Should Be    yum_check4updates    Disabled
    Select From List    yum_check4updates    Daily
    Click Button In Frame    Save
    Page Should Contain    The new settings have been saved.
    Click Menu    Software installer
    Wait Until Page Contains    Software installer  60
    Click Link In Frame    Change software installer settings
    List Selection Should Be    yum_check4updates    Daily

Manage individual packages enable
    Click Menu    Software installer
    Wait Until Page Contains    Software installer  60
    Click Link In Frame    Change software installer settings
    List Selection Should Be    yum_PackageFunctions    Disabled
    Select From List    yum_PackageFunctions    Enabled
    Click Button In Frame    Save
    Page Should Contain    The new settings have been saved.
    Click Menu    Software installer
    Wait Until Page Contains    Software installer  60
    Click Link In Frame    Change software installer settings
    List Selection Should Be    yum_PackageFunctions    Enabled

Manage individual packages disable
    Click Menu    Software installer
    Wait Until Page Contains    Software installer  60
    Click Link In Frame    Change software installer settings
    List Selection Should Be    yum_PackageFunctions    Enabled
    Select From List    yum_PackageFunctions    Disabled
    Click Button In Frame    Save
    Page Should Contain    The new settings have been saved.
    Click Menu    Software installer
    Wait Until Page Contains    Software installer  60
    Click Link In Frame    Change software installer settings
    List Selection Should Be    yum_PackageFunctions    Disabled

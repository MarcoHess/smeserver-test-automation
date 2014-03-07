*** Settings ***
Documentation     Change software installer settings
...               Click Button xpath=//input[contains(@type,'submit')]
Resource          ../../../resource.robot

*** Test Cases ***
Change software installer settings
    Click Menu    Software installer
    Click Link In Frame    Change software installer settings
    Click Button In Frame    Save
    Page Should Contain    The new settings have been saved.

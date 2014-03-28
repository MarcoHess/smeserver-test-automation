*** Settings ***
Documentation               Collaboration Users
Force Tags                  server-manager
...                         collaboration
...                         users
Resource                    ../../../resource.robot

*** Test Cases ***
List Users
    Click Menu                Users
    Page Should Contain       Create, modify, or remove user accounts

Add User robottest1
    [Documentation]           Add user 'robottest1'
    Click Menu                Users
    Click Link In Frame       Add user account
    Input Text                acctName    robottest1
    Input Text                FirstName    Robot
    Input Text                LastName    Test1
    Input Text                Dept    RobotFramework
    Input Text                Company    Koozali Inc.
    Input Text                Street    Robot Street 1
    Input Text                City    RobotTown
    Input Text                Phone    0123456789
    Select From List          EmailForward    Deliver email locally
    Select From List          VPNClientAccess    No
    Click Button In Frame     Add
    Table Should Contain      css=table.sme-border    robottest1
    Table Should Contain      css=table.sme-border    Account is locked
    Page Should Contain       Successfully created user account

Reset Password robottest1
    [Documentation]           Reset password for 'robottest1'
    Click Menu                Users
    Click Link                xpath=//a[@href[contains(.,'acctName=robottest1')] and contains(.,'Reset password')]
    Input Text                password1    Robot_Framework1
    Input Text                password2    Robot_Framework1
    Page Should Contain       Reset user password
    Page Should Contain       user account "robottest1"
    Click Button In Frame     Save
    Table Should Contain      css=table.sme-border    robottest1
    Table Should Contain      css=table.sme-border    Lock account

Lock Account robottest1
    [Documentation]           Lock account 'robottest1'
    Click Menu                Users
    Click Link                xpath=//a[@href[contains(.,'acctName=robottest1')] and contains(.,'Lock account')]
    Page Should Contain       Lock user account
    Page Should Contain       user account "robottest1"
    Click Button In Frame     Lock
    Table Should Contain      css=table.sme-border    robottest1
    Table Should Contain      css=table.sme-border    Account is locked
    Page Should Contain       Successfully locked account for user "robottest1"

Remove User robottest1
    [Documentation]           Remove user 'robottest1'
    Click Menu                Users
    Click Link                xpath=//a[@href[contains(.,'acctName=robottest1')] and contains(.,'Remove')]
    Page Should Contain       You are about to remove the user account "robottest1"
    Click Button In Frame     Remove
    Page Should Not Contain   robottest1

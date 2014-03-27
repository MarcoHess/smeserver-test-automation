*** Settings ***
Documentation                 Configuration - Hostnames and addresses
Resource                      ../../../resource.robot

*** Test Cases ***
List Hostnames
    [Documentation]           List the hostnames for this server and
    ...                       check default names.
    Click Menu                Hostnames and addresses
    Page Should Contain       Hostnames and address
    Page Should Contain       ${SERVER}
    Page Should Contain       ftp.${SERVER DOMAIN}
    Page Should Contain       mail.${SERVER DOMAIN}
    Page Should Contain       proxy.${SERVER DOMAIN}
    Page Should Contain       wpad.${SERVER DOMAIN}
    Page Should Contain       www.${SERVER DOMAIN}

Add Self Hostname RobotTest
    [Documentation]           Add a self hostname 'robottest' using the
    ...                      'Add hostname' form.
    Click Menu                Hostnames and addresses
    Click Link In Frame       Add hostname
    List Selection Should Be  domain      ${SERVER DOMAIN}
    List Selection Should Be  hosttype    Self
    Input Text                name        robottest
    Input Text                comment     Added by Robot Framework Tests
    Click Button In Frame     Next
    Page Should Contain       robottest
    Page Should Contain       ${SERVER DOMAIN}
    Page Should Contain       Self
    Page Should Contain       Added by Robot Framework Tests
    Click Button In Frame     Add
    Page Should Contain       Successfully created hostname.
    Click Menu                Hostnames and addresses
    Table Should Contain      css=table.sme-border    robottest.${SERVER DOMAIN}

Remove Self Hostname RobotTest
    [Documentation]           Remove the 'robottest' hostname.
    Click Menu                Hostnames and addresses
    Table Should Contain      css=table.sme-border    robottest.${SERVER DOMAIN}
    Click Link                xpath=//a[contains(.,'Remove') and @href[contains(.,'robottest')]]
    Page Should Contain       You are about to remove the hostname "robottest.${SERVER DOMAIN}".
    Click Button In Frame     Remove
    Page Should Contain       Successfully deleted host.

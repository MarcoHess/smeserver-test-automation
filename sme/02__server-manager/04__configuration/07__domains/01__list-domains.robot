*** Settings ***
Documentation                 Configuration - Domains
Force Tags                    server-manager
...                           configuration
...                           domains
Resource                      ../../../resource.robot

*** Test Cases ***
List Domains
    Click Menu                Domains
    Page Should Contain       Manage domains
    Page Should Contain       ${SERVER DOMAIN}
    Page Should Contain       Current list of domains
    Page Should Contain       Corporate DNS Settings

Add Domain RobotTest
    [Documentation]           Add a domain 'robottest.org' using the
    ...                      'Add domain' form.
    Click Menu                Domains
    Click Link In Frame       Add domain
    Input Text                Domain       robottest.org
    Input Text                Description  SME Robot Framework Test Domain
    List Selection Should Be  Content      primary site
    List Selection Should Be  Nameservers  Internet DNS servers
    Select From List          Nameservers  Resolve locally
    Click Button In Frame     Add
    Page Should Contain       Successfully created domain
    [Documentation]           Table with domains does not have any CSS selector
    Page Should Contain       robottest.org
    Page Should Contain       SME Robot Framework Test Domain

Check Domain Hostnames
    [Documentation]           Check default host names for domain 'robottest.org'
    [Tags]                    hostnames
    Click Menu                Hostnames and addresses
    Page Should Contain       Hostnames and address
    Page Should Contain       ${SERVER}
    Page Should Contain       ftp.${SERVER DOMAIN}
    Page Should Contain       mail.${SERVER DOMAIN}
    Page Should Contain       proxy.${SERVER DOMAIN}
    Page Should Contain       wpad.${SERVER DOMAIN}
    Page Should Contain       www.${SERVER DOMAIN}
    Page Should Contain       ${SERVER NAME}.robottest.org
    Page Should Contain       ftp.robottest.org
    Page Should Contain       mail.robottest.org
    Page Should Contain       proxy.robottest.org
    Page Should Contain       wpad.robottest.org
    Page Should Contain       www.robottest.org

Remove Domain RobotTest
    [Documentation]           Remove the 'robottest' domain.
    Click Menu                Domains
    Click Link                xpath=//a[@href[contains(.,'robottest.org')] and contains(.,'Remove')]
    Page Should Contain       Remove domain
    Click Button In Frame     Remove
    Page Should Contain       Successfully deleted domain
    
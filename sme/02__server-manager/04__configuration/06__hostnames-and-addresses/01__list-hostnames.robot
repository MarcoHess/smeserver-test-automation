*** Settings ***
Documentation     Configuration - Domains
Resource          ../../../resource.robot

*** Test Cases ***
List Domains
    Click Menu    Hostnames and addresses
    Page Should Contain    Hostnames and address
    Page Should Contain    ${SERVER}
    Page Should Contain    ftp.${SERVER DOMAIN}
    Page Should Contain    mail.${SERVER DOMAIN}
    Page Should Contain    proxy.${SERVER DOMAIN}
    Page Should Contain    wpad.${SERVER DOMAIN}
    Page Should Contain    www.${SERVER DOMAIN}


*** Settings ***
Documentation     Create a starter website
Resource          ../../../resource.robot

*** Test Cases ***
Open Create Starter Web Site Page
    Click Menu    Create starter web site
    Page Should Contain    Create a starter website

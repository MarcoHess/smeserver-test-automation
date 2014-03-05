*** Settings ***
Documentation     Setup server manager tests
Library           Selenium2Library
Suite Setup       Suite Setup
Suite Teardown    Suite Teardown
Resource          ../../resource.robot

*** Keyword ***
Suite Setup
    Open Browser To Login Page
    Input Username    ${VALID USER}
    Input Password    ${VALID PASSWORD}
    Submit Credentials

Suite Teardown
    Close Browser

*** Settings ***

Suite Setup   Log To Console    I am suitesetup

Suite Teardown   Log To Console    I am teardown

*** Variables ***

*** Test Cases ***
Testcase1
    Log To Console    I am first testcase
    
Testcae2
    Log To Console    I am second Testcase
    
Testcase3
    Log To Console    I am third testcase
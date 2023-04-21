*** Settings ***
Resource    ../Keyword/Admin.robot


*** Test Cases ***
Test1
    [Tags]   one
    Log To Console    ${firstvar}

Test2
    [Tags]   one
    Log To Console    ${second}

Test3
    [Tags]   one   four
    Log To Console    ${Third}

Test4
    [Tags]   two   three
    Log To Console    this is test4
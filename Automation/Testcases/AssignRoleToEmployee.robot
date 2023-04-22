*** Settings ***
Resource    ../Keyword/Admin.robot


*** Test Cases ***
Test1
    [Tags]   AD
    Log To Console    grgr

Test2
    [Tags]   AD
    Log To Console    fretrg

Test3
    [Tags]   one   four
    Log To Console    fdgregr

Test4
    [Tags]   two   three
    Log To Console    this is test4
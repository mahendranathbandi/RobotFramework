*** Settings ***



*** Test Cases ***
Test1
    [Tags]   one
    Log To Console    this is test1

Test2
    [Tags]   one
    Log To Console    this is test2

Test3
    [Tags]   one   four
    Log To Console    this is test3

Test4
    [Tags]   two   three
    Log To Console    this is test4
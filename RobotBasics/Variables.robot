*** Settings ***
Library   String

*** Variables ***
${var}      jjfufj
@{var2}     1  1   1   1
&{dict_var}   name=vale   name1=vale2   name=vaue3
${arg}    this

*** Keywords ***
Pritn Inline argumets as "${var1}" and "${var2}"
    [Documentation]
    Log To Console    ${var1}
    Log To Console    ${var2}

Return Keyword
    ${value} =    Convert To Upper Case    ${arg}
    RETURN   ${value}

*** Test Cases ***
Testcase1
    [Documentation]    This test will explain about varibles in robot framework
    [Tags]    Var
    @{items} =    Create List    first    second    third
    Log To Console    ${items}[0]
    Log To Console    ${CURDIR}
    Log To Console    ${TEST_TAGS}
    Log To Console    ${TEST_DOCUMENTATION}
#    ${actualvalue}    null
    #Should Be Equal    ${actualvalue}    ${EMPTY}

Testcase2
    [Documentation]   Inline arguments
    Pritn Inline argumets as "python" and "java"

Testcase3
    ${result}    Return Keyword
    Log To Console    ${result}





# robot Framework Lang Server
# robot runner
# Run Robot Framework file

# Run Robot Framewrok Testcase


*** Settings ***
Library   SeleniumLibrary
Library   Collections
Library   DateTime
Library   String


*** Variables ***
${var1}    3
${var2}    3

*** Keywords ***
Keyword1
    Should Be Equal As Integers    ${var1}    ${var2}

*** Test Cases ***
Testcase1
    #Should Be True    ${var2}==2
    Run Keyword    Keyword1


Testcase2
    Keyword1
    Log To Console    ${name}

Testcase3
    Keyword1

Testcase4
    Keyword1
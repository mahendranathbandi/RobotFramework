*** Settings ***
Library     SeleniumLibrary
Library     String
Library     Collections
Library     DateTime
Library     XML
Resource    ../Resource/Variable.robot
Resource    ../ObjectRepository/ObjectFileMapping.robot

*** Keywords ***
Log Into Application
    [Documentation]   this keyword will login HRM application
    Open Browser        ${url}      ${browser_name}     executable_path=chromedriver.exe
    Maximize Browser Window
    Sleep    5s
    Input Text    xpath:${Login_field}    ${log}
    Input Text    xpath://input[@type="password"]        ${pass}
    Click Button    xpath://button[@type="submit"]
    Sleep    10s
    ${text}     Get Text    xpath://h6[@class="oxd-text oxd-text--h6 oxd-topbar-header-breadcrumb-module"]
    #Log To Console    ${text}
    Should Be Equal    ${expected}    ${text}

Logout From Application
    [Documentation]  This keyword Logout from the application
    Click Element    ${logout_dropdown}
    Click Element    ${logout_button}




*** Settings ***
Library     SeleniumLibrary
Library     XML
Library     DateTime
Library     String
Library     Screenshot
Library     Collections

*** Variables ***
${url}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser_name}     Chrome
${log}      Admin
${pass}     admin123
${expected}  Dashboard


*** Keywords ***
Launch Page
    Open Browser        ${url}      ${browser_name}     executable_path=chromedriver.exe
    Maximize Browser Window
Creditionsl
    #Clear Element    xpath://input[@name="username"]
    #Clear Element    xpath://input[@type="password"]
    Input Text    xpath://input[@name="username"]    ${log}
    Input Text    xpath://input[@type="password"]        ${pass}
    Click Button    xpath://button[@type="submit"]
    Sleep    5s
    ${vale}    Get Text    xpath://h6[@class="oxd-text oxd-text--h6 oxd-topbar-header-breadcrumb-module"]

    Should Be Equal    ${vale}    ${expected}
    Sleep    5s
    Log To Console    ${vale}
   Click Element    class:oxd-main-menu-item
    Sleep    5s
    Click Element    xpath://button[@class="oxd-button oxd-button--medium oxd-button--secondary"]



*** Test Cases ***
Tetscase1
    Launch Page
    Sleep    5s
    Creditionsl



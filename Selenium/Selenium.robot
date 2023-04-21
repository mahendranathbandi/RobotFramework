
*** Settings ***
Library   SeleniumLibrary
Library   Collections
Library   DateTime
Library   String
Library    XML

*** Variables ***
${URL}  https://www.facebook.com/login/
${browser_name}     chrome

*** Keywords ***
Launch Page
    Open Browser  ${URL}  ${browser_name}    executable_path=chromedriver.exe
    Maximize Browser Window
    Element Should Contain    //div[text()="Log in to Facebook"]    Log in to Facebook
    
Enter Credentials
    [Arguments]    ${username}=8000   ${password}=80000
    Input Text    name:email    ${username}
    Input Text    xpath://input[@name="pass"]    ${password}


*** Test Cases ***
Testcase1
    Launch Page
    Enter Credentials    8555    5885
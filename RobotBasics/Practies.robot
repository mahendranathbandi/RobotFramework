*** Settings ***
Library     SeleniumLibrary
Library     Collections
Library     DateTime
Library     String
Library     XML
Library    Process

*** Variables ***
${us}       https://www.facebook.com/login/
${Broswe}       chrome
${user}     9701918452
${pass}     455124545
${validationText}       The mobile number you entered isn't connected to an account. Find your account and log in.


*** Keywords ***

Launch Page
    Open Browser    ${us}       ${Broswe}       executable_path=chromedriver.exe
    Maximize Browser Window

Enter Credentials
    Input Text    name:email    ${user}
    Input Text    id:pass    ${pass}
    Click Button    xpath://button[@value="1"]
    Capture Page Screenshot
    #${text}=     Get Text    css:#email_container div:nth-child(3)
    #Log To Console    ${text}
    Wait Until Page Contains    ${validationText}



*** Test Cases ***
Testcase1
     Launch Page
     Enter Credentials
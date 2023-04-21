*** Settings ***
Library   SeleniumLibrary
Resource  ../ObjectRepository/ObjectFileMapping.robot
Library   String

*** Keywords ***
Admin_Add_a_New_employe
    [Documentation]
    Click Element    xpath://a[@href="/web/index.php/pim/viewPimModule"]
    Sleep    5s
    click Element    ${add_button}
    Sleep    5s
    ${first_name}   Generate Random String  8  [LETTERS][NUMBERS]
    Input Text    xpath://input[@name="firstName"]      ${first_name}
    ${Latsname}    Generate Random String  8  [LETTERS][NUMBERS]
    Input Text    name:lastName      ${Latsname}
    Set Test Variable    ${fullname}   ${first_name}${SPACE}${Latsname}
    Sleep    10s
    Click Element    xpath://button[@type="submit"]


Add Role To Employee
    [Documentation]
    Sleep    10s
    Click Element    ${Admin_Page}
    Sleep    5s
    click Element    ${add_button}
    Sleep    5s
    click Element     (//div[@class="oxd-select-text-input"])[2]
    Sleep    5s
    Select From List By Value    //div[@class="oxd-select-dropdown --positon-bottom"]   Enabled
    Input Text    ${employeeName_Admin}    ${fullname}
    Sleep    10s
    Click Element    //div[@role="listbox"]
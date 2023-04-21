*** Settings ***
Library     SeleniumLibrary
Library     String
Library     Collections
Library     Screenshot
Library     Process


*** Variables ***
${url}      https://rahulshettyacademy.com/AutomationPractice/
${browser_name}     chrome

*** Keywords ***
Lanchpage
       Open Browser        ${url}      ${browser_name}     executable_path=chromedriver.exe
       Maximize Browser Window



Radial buttons
   #Select Radio Button    legend    radio2
    Select Radio Button    radioButton    radio2
    Select From List By Value   css:select#dropdown-class-example   option100
    Sleep    10sec



*** Test Cases ***
tetscase1
     Lanchpage
     Radial buttons
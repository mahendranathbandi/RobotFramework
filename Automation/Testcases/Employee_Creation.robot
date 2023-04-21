*** Settings ***
Library     SeleniumLibrary
Library     String
Library     Collections
Library     DateTime
Library     XML
Resource    ../Keyword/Admin.robot
Resource    ../Keyword/CommonKeywords.robot

*** Variables ***
${input}    this dynamicinput

*** Test Cases ***
#Tetscase1
#    [Tags]   AD   EM   ADD
#    Log Into Application
#    Admin_Add_a_New_employe
#    Add Role To Employee
#    Logout From Application

Test3
    [Tags]   AD  BD   CD
    Log To Console    ${input}

Test4
    [Tags]   BD  CD   A  one
    Log To Console    This is test4
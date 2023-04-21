
*** Settings ***
Library  String

*** Test cases ***
login with random string
    ${first_name}   Generate Random String  8  [LETTERS][NUMBERS]
    ${Latsname}    Generate Random String  8  [LETTERS][NUMBERS]
    Set Test Variable   ${fullname}    ${first_name}${SPACE}${Latsname}
    Log To Console    ${fullname}
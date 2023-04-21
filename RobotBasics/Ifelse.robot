

*** Variables ***
${input}     2
@{list1}     2  2    22   2  fjd   je   asdja
&{DICT}          a=1    b=2    c=3
*** Test Cases ***
Testcase1
    IF    ${input} == 5
         Log To Console    Values are equal
    ELSE
        Log To Console    Values are not eqaul
    END

Testcase2
    IF    ${input}==5     Log To Console    consle   ELSE    Log To Console    elsestament

Test3forloop
    FOR    ${i1}    IN    @{list1}
        Log To Console  ${i1}

    END

    FOR    ${index}    IN RANGE    10
        Log    ${index}
    END

Testcase4
Dictionary iteration with FOR loop
    FOR    ${key}    ${value}    IN    &{DICT}
        Log    Key is '${key}' and value is '${value}'.
    END

Limit as iteration count
    WHILE    True    limit=10
        Log    This is run 100 times.
    END
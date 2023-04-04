*** Settings ***


*** Test Cases ***
Demo Test Case
    Argument demo keyword    rcv    academy

Demo Test Case 2
    Argument demo keyword    test    testing

*** Keywords ***
Argument demo keyword
    [Arguments]    ${arg1}    ${arg2}
    Log    ${arg1}
    Log    ${arg2}


# robot -d results Tests/ArgumentsDemo.robot

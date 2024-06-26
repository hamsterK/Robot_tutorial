# Variable scopes

# Global scope
# Global variables are available everywhere in the test data.*** Variables ***

# Test suite scope
# Variables with the test suite scope are available anywhere in the test suite
# where they are defined or imported.*** Variables ***

# Test case scope
# Variables with the test case scope are visible in a
# test case and in all user keywords the test uses.*** Variables ***

# Local scope
# Test cases and user keywords have a local variable scope
# that is not seen by other tests or keywords.

#Keywords(variables): at global level(variables), in test cases, in keywords (== default value)


*** Settings ***

*** Variables ***
${VARIABLE_DEMO}  This is GLOBAL variable

*** Test Cases ***
This is demo test 1
    ${variable_demo} =  Set Variable  This is TESTCASE variable
    Log     ${VARIABLE_DEMO}

This is demo test 2
    log     ${VARIABLE_DEMO}

This is demo test 3
    This is demo keyword

# robot -d results Tests/Travels/VeriableScope.robot

*** Keywords ***
This is demo keyword
    [Arguments]    ${variable_demo}=This is KEYWORD variable
    log     ${VARIABLE_DEMO}



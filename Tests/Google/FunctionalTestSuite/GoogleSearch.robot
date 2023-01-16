*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
This is sample test case
    [Documentation]  Google test
    [Tags]  regression

    open browser    https://www.google.com/     chrome
    close browser

*** Keywords ***


# robot -d results Tests/Google/FunctionalTestSuite/GoogleSearch.robot
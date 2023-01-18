*** Settings ***
Documentation    Basic Search Functionality
Resource    ../../Resources/CommonFunctionality.robot
Resource    ../../Resources/eBay_UserDefinedKeywords.robot

Test Setup    CommonFunctionality.Start test case
Test Teardown    CommonFunctionality.Finish test case

*** Variables ***

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]    This test case verifies the basic search
    [Tags]    Functional

    eBay_UserDefinedKeywords.Verify search results
    eBay_UserDefinedKeywords.Filter results by condition
    eBay_UserDefinedKeywords.Verify filter results

*** Keywords ***



# robot -d results Tests/eBay/BasicSearch.robot



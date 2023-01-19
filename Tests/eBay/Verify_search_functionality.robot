*** Settings ***
Documentation    Basic Search Functionality
Resource    ../../Resources/CommonFunctionality.robot
# Resource    ../../Resources/eBay_UserDefinedKeywords.robot
Resource    ../../Resources/PageObjects/HeaderPage.robot
Resource    ../../Resources/PageObjects/SearchResultsPage.robot

Test Setup    CommonFunctionality.Start test case
Test Teardown    CommonFunctionality.Finish test case

*** Variables ***

*** Test Cases ***
Verify basic search functionality
    [Documentation]    This test case verifies the basic search
    [Tags]    Functional

    HeaderPage.Input search text and click search
    SearchResultsPage.Verify search results

Verify advanced search functionality
    [Documentation]     This test case verifies the advanced search
    [Tags]    CommonFunctionality.Finish test case

    HeaderPage.Click on advanced search link

    # eBay_UserDefinedKeywords.Verify search results
    # eBay_UserDefinedKeywords.Filter results by condition
    # eBay_UserDefinedKeywords.Verify filter results

*** Keywords ***



# robot -d results Tests/eBay/Verify_search_functionality.robot


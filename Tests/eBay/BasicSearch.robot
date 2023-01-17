*** Settings ***
Documentation    Basic Search Functionality
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]    This test case verifies the basic search
    [Tags]    Functional

    open browser    https://www.ebay.com/  chrome
    input text   //*[@id="gh-ac"]  mobile
    press keys    //*[@id="gh-btn"]  [return]
    page should contain    results for mobile
    close browser

*** Keywords ***

# robot -d results Tests/eBay/BasicSearch.robot
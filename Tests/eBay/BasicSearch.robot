*** Settings ***
Documentation    Basic Search Functionality
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]    This test case verifies the basic search
    [Tags]    Functional

    open browser    https://www.ebay.com/  chrome
    MAXIMIZE BROWSER WINDOW

    input text   xpath://*[@id="gh-ac"]  mobile
    press keys    xpath://*[@id="gh-btn"]  RETURN
    # press keys    id:gh-btn RETURN
    # press keys    name:this-in-name RETURN
    # press keys    css:#gh-btn RETURN
    page should contain    results for mobile

    close browser

*** Keywords ***

# robot -d results Tests/eBay/BasicSearch.robot
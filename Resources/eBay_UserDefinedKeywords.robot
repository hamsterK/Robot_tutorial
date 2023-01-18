*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Verify search results
    input text   xpath://*[@id="gh-ac"]  mobile
    press keys    xpath://*[@id="gh-btn"]  RETURN
    # press keys    id:gh-btn RETURN
    # press keys    name:this-in-name RETURN
    # press keys    css:#gh-btn RETURN
    page should contain    results for mobile

Filter results by condition
    click element    //span[@class='filter-menu-button__button-text' and text()='Condition']
    click element   //span[@class='filter-menu-button__text' and text()='New']

Verify filter results
    element should contain    //div[text()='New']       New
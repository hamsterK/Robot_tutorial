*** Settings ***
Library    SeleniumLibrary
Resource    ./HeaderPage.robot

*** Variables ***
${search_result}   results for

*** Keywords ***
Verify search results
    [Arguments]    ${search_text}
    page should contain    ${search_result} ${search_text}

Select product condition


Select delivery options
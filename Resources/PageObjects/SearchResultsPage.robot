*** Settings ***
Library    SeleniumLibrary
Resource    ./HeaderPage.robot

*** Variables ***
${search_result}   results for
*** Keywords ***
Verify search results
    page should contain    ${search_result} ${search_text[1]}

Select product condition


Select delivery options
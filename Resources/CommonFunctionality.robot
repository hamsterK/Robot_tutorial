*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Start test case
    open browser    https://www.ebay.com/  chrome
    MAXIMIZE BROWSER WINDOW

Finish test case
    close browser



*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Input search text and click search
    input text   xpath://*[@id="gh-ac"]  mobile
    press keys    xpath://*[@id="gh-btn"]  RETURN

Click on advanced search link
    click element    //*[@id='gh-as-a']
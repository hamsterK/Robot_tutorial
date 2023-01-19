*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${search_text}  mobile
# ${GLOBAL_VARIABLE} - upper case for local v
*** Keywords ***
Input search text and click search
    input text   xpath://*[@id="gh-ac"]    ${search_text}
    press keys    xpath://*[@id="gh-btn"]  RETURN

Click on advanced search link
    click element    //*[@id='gh-as-a']

Search for another text
    input text    xpath://*[@id='gh-ac']    ${search_text}
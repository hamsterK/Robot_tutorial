*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#${search_text}  books

# Below is list of variables
@{search_text}  books  travel  gifts  robots
# ${GLOBAL_VARIABLE} - upper case for local v
*** Keywords ***
Input search text and click search
    input text   xpath://*[@id="gh-ac"]  ${search_text[1]}
    press keys    xpath://*[@id="gh-btn"]  RETURN

Click on advanced search link
    click element    //*[@id='gh-as-a']

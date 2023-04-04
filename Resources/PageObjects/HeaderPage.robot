*** Settings ***
Library    SeleniumLibrary
Variables   ../Webelements.py
# ../ == come up one level

*** Variables ***
#&{search_text}  abc=books   bcd=travel
#${search_text}  books
# @{search_text}  books  travel  gifts  robots
# ${GLOBAL_VARIABLE} - upper case for local v

# move to weblements (common resources)
#${SearchTextBox}    xpath://*[@id="gh-ac"]
#${SearchButton}     xpath://*[@id="gh-btn"]
#${AdvancedSearchLink}   //*[@id='gh-as-a']

*** Keywords ***
Input search text and click search
    [Arguments]    ${search_text}
    input text    ${HomePageSearchTextBox}    ${search_text}
    press keys    ${SearchButton}  RETURN

Click on advanced search link
    click element    ${AdvancedSearchLink}



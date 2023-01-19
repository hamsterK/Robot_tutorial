*** Settings ***
Library    SeleniumLibrary

*** Variables ***
&{search_text}  abc=books   bcd=travel
#${search_text}  books
# @{search_text}  books  travel  gifts  robots
# ${GLOBAL_VARIABLE} - upper case for local v
*** Keywords ***
Input search text and click search
    input text    xpath://*[@id="gh-ac"]  ${search_text.abc}
    press keys    xpath://*[@id="gh-btn"]  RETURN

Click on advanced search link
    click element    //*[@id='gh-as-a']

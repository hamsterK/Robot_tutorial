*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
TC to demonstrate Browser Operation Keywords in Robot Framework
    [Documentation]  TC to demonstrate browser operation keywords
    
    Open Browser    http://google.com   Chrome  alias=ChromeRCV
    Maximize Browser Window
    Open Browser    about:blank  ff  alias=RCVFF
    # ff = firefox

    &{alias}    Get Browser Aliases
    # Log    @{alias}[1]
    @{browser_ID}   Get Browser Ids
    Log     @{browser_ID}[1]
    Switch Browser    1
    Sleep    2s
    Switch Browser    @{browser_ID}[1]
    Sleep    2s
    Switch Browser     ${alias}[ChromeRCV]
    Go To    http://salesforce.com
    Close All Browsers



# robot -d results Tests/WorkingWithBrowser.robot


# Open Browser    https://www.ebay.com/  Chrome
# Open Browser    https://www.ebay.com/  Firefox  alias=RCV
# Open Browser    about:blank
# Open Browser    browser=Chrome

#Close Browser
#Close All Browsers
#Get Browser Ids - returns index of all active browser as list
#Maximize Browser Window
#Get Browser Alias - returns aliases of all active browser that has an alias as NormalizedDict
#Switch Browser - switch between active browsers using index_or_alias

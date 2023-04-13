*** Settings ***
Library     SeleniumLibrary

*** Variables ***
# ${env}  qa
# &{url}  qa=http://qa.demo.com   uat=http://uat.demo.com    dev=http://dev.demo.com

# default values below, if needed can set different values for vars in command line
${url}  https://www.ebay.com/
${browser}  chrome


*** Keywords ***
Start test case
    # open browser    ${url.qa}   chrome
    # open browser    ${url.${env}}   chrome
#    open browser    https://www.ebay.com/  chrome
    Open Browser    ${url}  ${browser}
    MAXIMIZE BROWSER WINDOW
    BUILTIN.SLEEP    4 seconds
Finish test case
    close browser


# robot -d results -v env:uat Tests/eBay/Verify_search_functionality.robot


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




# with different browser and url:
# robot -d results -v url:https://www.onliner.by/ -v browser:firefox Tests/eBay/Verify_search_functionality.robot
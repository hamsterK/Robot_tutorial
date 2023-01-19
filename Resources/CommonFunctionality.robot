*** Settings ***
Library     SeleniumLibrary

*** Variables ***
# ${env}  qa
# &{url}  qa=http://qa.demo.com   uat=http://uat.demo.com    dev=http://dev.demo.com

*** Keywords ***
Start test case
    # open browser    ${url.qa}   chrome
    # open browser    ${url.${env}}   chrome
    open browser    https://www.ebay.com/  chrome
    MAXIMIZE BROWSER WINDOW
    # BUILTIN.SLEEP    4 seconds
Finish test case
    close browser


# robot -d results -v env:uat Tests/eBay/Verify_search_functionality.robot
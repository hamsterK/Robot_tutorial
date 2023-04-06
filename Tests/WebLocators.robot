*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC to demonstrate Weblocators in Robot FW
    [Documentation]  This is sample test case to demonstrate locators in Robot FW

    Open Browser  https://www.ebay.com/  chrome
    Maximize Browser Window
#    Input Text    id:gh-ac    robot
#    Input Text    name:_nkw    robot
#    Click Link    link:Start selling
#    Click Link    partial link:Seller Ce
#    Click Link    xpath://tagname[@attribute='Value']
    Input Text    xpath://input[@name="_nkw"]    robot

    Sleep    1s
    Close Browser


# // - relative xpath (short)
# / - absolute xpath (full)
# xpath://tagname[starts-with(@Attribute,'Value')] - useful if part of attribute is dynamic
# xpath://tagname[contains(@Attribute,'Value)]
# xpath://tagname[text()='ActualText']
# xpath://tagname[@Attribute='Value' or @Attribute='Value']
# xpath://tagname[Attribute='Value and @Attribute='Value']
# xpath://tagname[@Attribute='Value']//parent::tagname - selects parent of the context (current) node
# xpath://tagname[@Attribute='Value']//child::tagname - selects all children of the current node
# xpath://tagname[@Attribute="Value']//self::tagname - selects the current node

# xpath://tagname[@Attribute='Value']//descendant::tagname - selects all of the descendents
# xpath://tagname[@Attribute='Value']//descendant-or-self::tagname - selects current node and all descendants
# with the same tag
# xpath://tagname[@Attribute='Value']//ancestor::tagname - selects all of the ancestors (parents)
# xpath://tagname[@Attribute='Value']//ancestor-or-self::tagname - selects current node and all ancestors
# with the same tag


# robot -d results Tests/WebLocators.robot
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


# robot -d results Tests/WebLocators.robot

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
# xpath://tagname[@Attribute='Value']//following::tagname - follows all nodes that appear after the context mode
# xpath://tagname[@Attribute='Value']//following-sibling::tagname - follows all nodes that have the same parent as
# the context node and appear after the context mode
# xpath://tagname[@Attribute='Value']//preceding::tagname - selects all nodes that appear before the context node
# xpath://tagname[@Attribute='Value']//preceding-sibling::tagname - followes all nodes that have the same parent as
# the context node and appear before the context mode


# css selectors
# css:input#first_name
# tagName[AttributeName='AttributeValue'] => input[id=first_name] => universal: type, placeholder, value, etc
# tagName#elementID => input#first_name or input[name='userfirst_name]'] => select by id (#)
# tagName.elementID => input.signup => class attribute => . dot
# tagName.classValue[AttributeName='AttributeValue']tagName#idValue[AttributeName='AttributeValue']
# input.signup[type='submit'][value='Sign me up'] input#submit_btn[type='submit'][value='Sign me up']
# => mix of tag, id and classname
# sub-string =>
# '^' prefix of the text => input[name^='country_c']
# '$' suffix of the text => input[name$='y_client']
# '*' - substring of the text => input[name*='try_cl']
# direct child (>) => select#country>option[value='AU']
# child and subchild  ( ) => form#deorg_form div
# next sibling (+) - second webelement follows immediately and both are child of the same parent
# => option[value='Developer']+option
# pseudo-class (first, last, nth) - specifies special state of selected element
# first-child (1st element from group of siblings) => select#job_role>:first-child
# last-child (last elementt from group of siblings) => select#job_role:last-child
# nth-child() (based on position in group of siblings) => select#job_role:nth-child(4)
# nth-last-child() (-/-, from end) => select#job_role:nth-last-child(4)
# first-of-type - first of its type among group of siblings => form#deorg_form>input:first-of-type
# last-of-type - last of its type among group of siblings => form#deorg_form>input:last-of-type
# nth-of-type() - matches elements of given type based on position among group of siblings
# => form#deorg_form>input:nth-of-type(4)




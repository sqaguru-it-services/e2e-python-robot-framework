*** Settings ***
Resource        ..${/}main.resource

*** Keywords ***
User should be able to add product in cart
    Launch Browser and Login User
    Wait Until Page Contains Element    (//div[@class="inventory_item_name"])[1]
    ${FirstProductLableElement}   Get WebElement    (//div[@class="inventory_item_name"])[1]
    ${FirstProductLableElementText}    Get Text    ${FirstProductLableElement}
    
    Click Button    (//button[contains(@id,"add-to-cart-sauce-labs")])[1]

    Click Element    ${CommonPage_CartButton}
    Wait Until Page Contains Element    (//div[@class="inventory_item_name"])[1]

    ${CartItenLabelText}    Get Text    (//div[@class="inventory_item_name"])[1]

    Should Be Equal As Strings    ${FirstProductLableElementText}    ${CartItenLabelText}
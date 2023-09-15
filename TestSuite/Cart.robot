*** Settings ***
Documentation        Login
Resource        ..${/}resource${/}main.resource
Suite Teardown        Teardown Suite


*** Keywords ***
Teardown Suite
    Close All Browsers

*** Test Cases ***
TCC001_AddProductInCart
    [Tags]    Cart
    User should be able to add product in cart
    
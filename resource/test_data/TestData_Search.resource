*** Settings ***
Resource        ..${/}main.resource
*** Variables ***
${TestData_ProductInfo}  

*** Keywords ***
Get Product Info Test Data
    ${TestData_ProductInfo}    Read Test Data Json File    test_data_products.json
    Set Global Variable    ${TestData_ProductInfo}
    [Return]    ${TestData_ProductInfo}



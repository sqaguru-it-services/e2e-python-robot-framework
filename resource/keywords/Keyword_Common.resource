*** Settings ***
Resource        ..${/}main.resource


*** Keywords ***    
Launch Browser
    Log To Console    ${chrome_mode}
    IF    "${chrome_mode}" == "headless"
        Open Browser        brower=Headless Chrome
    ELSE
        Open Browser         browser=Chrome        
    END
    Maximize Browser Window
    Go To    ${base_url}
    

Login User
    Wait Until Element Is Visible    ${LoginPage_Username}    
    Input Text    ${LoginPage_Username}    ${login_username}
    Input Password    ${LoginPage_Password}    ${login_password}
    Click Element    ${LoginPage_LoginButton}

Launch Browser and Login User
    Launch Browser
    Login User

Logout User
    Wait Until Page Contains Element    ${LeftMenu_HamburgerMenuButton}
    Click Element    ${LeftMenu_HamburgerMenuButton}
    Wait Until Element Is Visible    ${LeftMenu_LogoutLink}    
    Click Element    ${LeftMenu_LogoutLink}
    
Read Test Data Json File
    [Arguments]    ${json_file_name}
    ${TempFileData}    Get File    ${CURDIR}${/}${json_file_name}
    ${TempParsedJsonData}=    Evaluate    json.loads('''${TempFileData}''')    json
    Log To Console    ${TempParsedJsonData}
    [Return]    ${TempParsedJsonData}


*** Settings ***
Resource        ..${/}main.resource

*** Keywords ***    
Is Left Menu Logout Link Is Visible
    Wait Until Element Is Visible    ${LeftMenu_HamburgerMenuButton}
    Click Element    ${LeftMenu_HamburgerMenuButton}
    Wait Until Element Is Visible    ${LeftMenu_LogoutLink}
    ${IsLeftMenuLogoutLinkIsVisible}     Run Keyword And Return Status    Element Should Be Visible    ${LeftMenu_LogoutLink}
    [Return]    ${IsLeftMenuLogoutLinkIsVisible}
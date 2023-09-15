*** Settings ***
Resource        ..${/}main.resource

*** Keywords ***
Login User And Verify User Is Logged In
    Launch Browser and Login User
    ${IsLeftMenuLogoutLinkIsVisible}    Is Left Menu Logout Link Is Visible
    Should Be Equal    ${IsLeftMenuLogoutLinkIsVisible}    ${True}

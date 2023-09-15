*** Settings ***
Documentation        Login
Resource        ..${/}resource${/}main.resource
Suite Teardown        Teardown Suite


*** Keywords ***
Teardown Suite
    Close All Browsers

*** Test Cases ***
TCUA001_VerifyUserLogin
    [Tags]    Auth
    Login User And Verify User Is Logged In

    
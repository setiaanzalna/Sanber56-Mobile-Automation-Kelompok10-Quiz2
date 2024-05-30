*** Settings ***
Resource            ../base.robot
Resource            ../homePageFlight/homePage.robot
Variables           loginPageLocators.yaml

*** Keywords ***
Input Username
    [Arguments]                        ${username}
    Wait Until Element Is Visible      ${username_input}
    Input Text                         ${username_input}        ${username}

Input User Password
    [Arguments]                        ${password}
    Wait Until Element Is Visible      ${password_input}
    Input Text                         ${password_input}        ${password}

Click Sign In Button On Login Screen
    Click Element                      ${login_btn}

Login To Test Booking Menu
    [Arguments]    ${username}    ${password}
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username    support@ngendigital.com
    Input User Password    abc123
    Click Sign In Button On Login Screen
    Verify Success Login
    Click Booking Menu After Login

Login To Test Search Menu
    [Arguments]    ${username}    ${password}
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username    support@ngendigital.com
    Input User Password    abc123
    Click Sign In Button On Login Screen
    Verify Success Login
    Click Search Menu After Login
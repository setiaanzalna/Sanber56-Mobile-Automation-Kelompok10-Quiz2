*** Settings ***
Resource            ../PageObject/homePageFlight/homePage.robot
Resource            ../PageObject/loginPageFlight/loginPage.robot
Test Setup          Open Flight Application
Test Teardown       Close Flight Application

*** Variables ***
${VALID_USERNAME}              support@ngendigital.com
${VALID_PASSWORD}              abc123
${INVALID_USERNAME}            setia@gmail.com
${INVALID_PASSWORD}            setia123
${EMPTY_USERNAME}              
${EMPTY_PASSWORD}              
${ALERT_TEXT}                  Invalid username/password

*** Test Cases ***
Successful Login Using a Valid Username and Password
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input username                        ${VALID_USERNAME}
    Input User password                   ${VALID_PASSWORD}
    Click Sign In Button On Login Screen
    Verify Success Login

Failed Login Using an Invalid Username and Password
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input username                        ${INVALID_USERNAME}
    Input User password                   ${INVALID_PASSWORD}
    Click Sign In Button On Login Screen
    Wait Until Page Contains              ${ALERT_TEXT}

Failed Login Using an Valid Username and Invalid Password
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input username                        ${VALID_USERNAME}
    Input User password                   ${INVALID_PASSWORD}
    Click Sign In Button On Login Screen
    Wait Until Page Contains              ${ALERT_TEXT}

Failed Login Using an Invalid Username and Valid Password
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input username                        ${INVALID_USERNAME}
    Input User password                   ${VALID_PASSWORD}
    Click Sign In Button On Login Screen
    Wait Until Page Contains              ${ALERT_TEXT}

Failed Login With Both Empty Username and Password
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input username                        ${EMPTY_USERNAME}
    Input User password                   ${EMPTY_PASSWORD}
    Click Sign In Button On Login Screen
    Wait Until Page Contains              ${ALERT_TEXT}

Failed Login With Empty Username and Valid Password
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input username                        ${EMPTY_USERNAME}
    Input User password                   ${VALID_PASSWORD}
    Click Sign In Button On Login Screen
    Wait Until Page Contains              ${ALERT_TEXT}

Failed Login With Valid Username and Empty Password
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input username                        ${VALID_USERNAME}
    Input User password                   ${EMPTY_PASSWORD}
    Click Sign In Button On Login Screen
    Wait Until Page Contains              ${ALERT_TEXT}
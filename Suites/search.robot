*** Settings ***
Resource            ../PageObject/bookPageFlight.robot/bookPage.robot
Resource            ../PageObject/searchPageFlight.robot/searchPage.robot
Resource            ../PageObject/homePageFlight/homePage.robot
Resource            ../PageObject/loginPageFlight/loginPage.robot
Test Setup          Run keywords
...    Open Flight Application
...    AND    Login To Test Search Menu    username=support@ngendigital.com    password=abc123
Test Teardown        Close Flight Application

*** Variables ***
${VALIDFLIGHTNUMBER}                                         DA935
${INVALIDFLIGHTNUMBER}                                       ABC123
${VALIDFLIGHTNUMBERWITHWORNGUPPERANDLOWERLETTERS}            da935
${EMPTYFLIGHTNUMBER}                                         
${ALERT_TEXT}                                                Please enter valid Flight Number

*** Test Cases ***
Success Search Flight Number
    Input Flight Number                ${VALIDFLIGHTNUMBER}
    Click Search Button On Searh Page
    Verify Success Search Flight Number

Unsuccess Search Flight Number With Wrong Number
    Input Flight Number                ${INVALIDFLIGHTNUMBER}
    Click Search Button On Searh Page
    Wait Until Page Contains           ${ALERT_TEXT}

Unsuccess Search Flight Number With Incorrect Uppercase And Lowercase letters
    Input Flight Number                ${VALIDFLIGHTNUMBERWITHWORNGUPPERANDLOWERLETTERS}
    Click Search Button On Searh Page
    Wait Until Page Contains           ${ALERT_TEXT}

Unsuccess Search Flight Number With Empty Flight Number
    Input Flight Number                ${EMPTYFLIGHTNUMBER}
    Click Search Button On Searh Page
    Wait Until Page Contains           ${ALERT_TEXT}


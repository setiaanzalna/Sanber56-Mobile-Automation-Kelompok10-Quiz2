*** Settings ***
Resource            ../base.robot
Variables           searchPageLocators.yaml

*** Keywords ***
Input Flight Number
    [Arguments]                           ${flightnumber}
    Wait Until Element Is Visible         locator=${flightnumber_input}
    Input Text                            locator=${flightnumber_input}    text=${flightnumber}

Click Search Button On Searh Page
     Click Element                        locator=${searchflightnumber_btn}

Verify Success Search Flight Number
    Wait Until Element Is Visible        locator=${sucesssearchflightnumber}
*** Settings ***
Resource            ../base.robot
Variables           bookPageLocators.yaml

*** Keywords ***
Click One Way Trip
    Wait Until Element Is Visible    ${oneway_btn}
    Click Element                    ${oneway_btn}

Click Round Trip
    Wait Until Element Is Visible    ${roundtrip_btn}
    Click Element                    ${roundtrip_btn}

Click Economy Class
    Click Element                    ${economycls_btn}
    Wait Until Element Is Visible    ${economycls_btn}
    Click Element                    ${economycls_btn}

Click Business Class
    Click Element                    ${economycls_btn}
    Wait Until Element Is Visible    ${businesscls_btn}
    Click Element                    ${businesscls_btn}

Click First Class
    Click Element                    ${economycls_btn}
    Wait Until Element Is Visible    ${firstcls_btn}
    Click Element                    ${firstcls_btn}

Click Just Flight Ticket
    Click Element                    locator=//android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlight"]

Click Flight And Hotel Ticket
    Click Element                    locator=//android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlightHotel"]

Click Book Flight Button
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]

Click The Cheapest Ticket
    Wait Until Element Is Visible    ${cheapesttiket_btn}
    Click Element                    ${cheapesttiket_btn}

Click Standard Price Ticket
    Wait Until Element Is Visible    ${standardtiket_btn}
    Click Element                    ${standardtiket_btn}

Click The Most Expensive Ticket
    Wait Until Element Is Visible    ${expensivetiket_btn}
    Click Element                    ${expensivetiket_btn}

Click Ticket Booking Confirmation Button
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/confirm_order"]

Verify Successful Flight Booking
    Wait Until Element Is Visible    locator=//android.widget.CheckedTextView[@resource-id="com.example.myapplication:id/checkedTextView"]






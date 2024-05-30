*** Settings ***
Resource            ../PageObject/bookPageFlight.robot/bookPage.robot
Resource            ../PageObject/homePageFlight/homePage.robot
Resource            ../PageObject/loginPageFlight/loginPage.robot
Test Setup          Run keywords
...    Open Flight Application
...    AND    Login To Test Booking Menu    username=support@ngendigital.com    password=abc123
Test Teardown        Close Flight Application

*** Test Cases ***
Booking One Way Trip Ticket
    Click One Way Trip
    Click Economy Class
    Click Just Flight Ticket
    Click Book Flight Button
    Click Standard Price Ticket
    Click Ticket Booking Confirmation Button
    Verify Successful Flight Booking

Booking One Way Trip Plus Hotel
    Click One Way Trip
    Click Economy Class
    Click Flight And Hotel Ticket
    Click Book Flight Button
    Click Standard Price Ticket
    Click Ticket Booking Confirmation Button
    Verify Successful Flight Booking

Booking One Way Trip With Business Class
    Click One Way Trip
    Click Business Class
    Click Just Flight Ticket
    Click Book Flight Button
    Click Standard Price Ticket
    Click Ticket Booking Confirmation Button
    Verify Successful Flight Booking

Booking One Way Trip at the Lowest Prices On August 4th
    Click One Way Trip
    Click Economy Class
    Click Just Flight Ticket
    Click Book Flight Button
    Click The Cheapest Ticket
    Click Ticket Booking Confirmation Button
    Verify Successful Flight Booking

Booking Round Trip Ticket
    Click Round Trip
    Click Economy Class
    Click Just Flight Ticket
    Click Book Flight Button
    Click Standard Price Ticket
    Click Ticket Booking Confirmation Button
    Verify Successful Flight Booking

Booking Round Trip Plus Hotel
    Click Round Trip
    Click Economy Class
    Click Flight And Hotel Ticket
    Click Book Flight Button
    Click Standard Price Ticket
    Click Ticket Booking Confirmation Button
    Verify Successful Flight Booking

Booking Round Trip With First Class
    Click Round Trip
    Click First Class
    Click Just Flight Ticket
    Click Book Flight Button
    Click Standard Price Ticket
    Click Ticket Booking Confirmation Button
    Verify Successful Flight Booking

Booking Round Trip with the Highest Price on August 5th
    Click Round Trip
    Click Economy Class
    Click Just Flight Ticket
    Click Book Flight Button
    Click The Most Expensive Ticket
    Click Ticket Booking Confirmation Button
    Verify Successful Flight Booking
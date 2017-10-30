*** Settings ***
Library  Selenium2Library
Resource  C:/git-ClearTrip/Resources/Common.robot
Resource  C:/git-ClearTrip/Resources/PO/Homepage.robot
Resource  C:/git-ClearTrip/Resources/PO/Flight.robot
Resource  C:/git-ClearTrip/Resources/PO/Hotel.robot

Suite Setup  Begin Test
Suite Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://www.cleartrip.com/

*** Test Cases ***
Sign In Test
    [Documentation]  Launching URL & Verifying Logo
    Navigate to Homepage
    Sign in Verification

Flight Booking Test
    [Documentation]  Flight Booking & Result Verification
    Flight Search

Hotel Booking Test
    [Documentation]  Hotel Booking & Result Verification
    Navigate to Homepage
    Hotel Search




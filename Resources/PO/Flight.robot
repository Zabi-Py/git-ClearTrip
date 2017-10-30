*** Settings ***
Library  Selenium2Library

*** Variables ***
${Flight} =  /flights
${RadioGrpName} =  trip_type
${OneWay} =  OneWay
${From} =  FromTag
${To} =  ToTag
${Source} =  Bangalore
${Destination} =  Delhi
${DepartDate} =  DepartDate
${Date} =  //*[@id='ui-datepicker-div']/div[2]/table/tbody/tr[3]/td[2]/a
${FlightSearchButton} =  SearchBtn
${FlightsList} =  flightForm

*** Keywords ***
Flight Search
    select radio button  ${RadioGrpName}  ${OneWay}
    input text  ${From}  ${Source}
    press key  ${From}  \\25
    press key  ${From}  \\13
    input text  ${To}  ${Destination}
    press key  ${To}  \\25
    press key  ${To}  \\13
    click element  ${DepartDate}
    click element  ${Date}
    click element  ${FlightSearchButton}
    page should contain element  ${FlightsList}
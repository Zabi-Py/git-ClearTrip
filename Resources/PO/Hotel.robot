*** Settings ***
Library  Selenium2Library

*** Variables ***
${Hotels} =  xpath=(//a[@href='/hotels'])[2]
${Where} =  Tags
${Location} =  Indiranagar
${CheckInDate} =  CheckInDate
${CheckOutDate} =  CheckOutDate
${Date1} =  //*[@id='ui-datepicker-div']/div[2]/table/tbody/tr[3]/td[2]/a
${Date2} =  //*[@id='ui-datepicker-div']/div[1]/table/tbody/tr[3]/td[5]/a
${Travellers} =  travellersOnhome
${Room&Persons} =  1 room, 1 adult
${HotelSearchButton} =  SearchHotelsButton
${HotelsList} =  xpath=(//*[@class='hotelsList'])[2]

*** Keywords ***
Hotel Search
    click link  ${Hotels}
    input text  ${Where}  ${Location}
    press key  ${Where}  \\25
    press key  ${Where}  \\13
    click element  ${CheckInDate}
    click element  ${Date1}
    click element  ${CheckOutDate}
    click element  ${Date2}
    select from list by label  ${Travellers}  ${Room&Persons}
    click element  ${HotelSearchButton}
    page should contain element  ${HotelsList}
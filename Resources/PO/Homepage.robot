*** Settings ***
Library  Selenium2Library
Library  String

*** Variables ***
${YourTrips} =  userAccountLink
${Logo} =  //*[@title='Cleartrip ']
${SignIn} =  SignIn
${Frame} =  modal_window
${SignIn_Button} =  signInButton
${Error} =  errors1
${Close_icon} =  close
${ExpErrorMsg} =  There were errors in your submission\nYour username is a required field\nYour account password is a required field

*** Keywords ***
Navigate to Homepage
    Go to  ${URL}
    reload page
    page should contain element  ${Logo}

Sign in Verification
    click link  ${YourTrips}
    click element  ${SignIn}
    select frame  ${Frame}
    click button  ${SignIn_Button}
    ${ActualErrorMsg} =  get text  ${Error}
    Log  ${ActualErrorMsg}
    should be equal as strings  ${ActualErrorMsg}  ${ExpErrorMsg}
    unselect frame
    click element  ${Close_icon}




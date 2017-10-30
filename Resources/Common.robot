*** Settings ***
Library  Selenium2Library
Library  String

*** Keywords ***
Begin Test
    ${Browser} =  convert to lowercase  ${BROWSER}
    set global variable  ${Browser}
    run keyword if  '${Browser}'=='edge'  EDGE  ELSE IF  '${Browser}'=='chrome'  CHROME  ELSE  FIREFOX

CHROME
    [Arguments]  ${alias}=${EMPTY}
    ${options} =   Evaluate   sys.modules['selenium.webdriver'].ChromeOptions()   sys, selenium.webdriver
    Call Method    ${options}    add_argument   disable-infobars
    Create WebDriver  Chrome  alias=${alias}  chrome_options=${options}
    maximize browser window
    set selenium speed  1s
    set selenium implicit wait  1s

FIREFOX
    open browser  about:blank  ${Browser}
    maximize browser window
    set selenium speed  1s
    set selenium implicit wait  1s

EDGE
    open browser  about:blank  ${Browser}
    set selenium speed  1s
    set selenium implicit wait  1s

End Test
    close browser
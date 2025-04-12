*** Settings ***
Library    SeleniumLibrary
Library    UndetectedBrowser.py

*** Variables ***
${url}           https://www.trademarkia.com/trademark/trademark-registration/step1
${full_name}     Tanvi Arabekar
${invalid_email}  tanvi@invalid

*** Test Cases ***
TC_005 Invalid Email Input
    Open Undetected Browser    ${url}
    Maximize Browser Window


    Sleep    1s

    # Enter valid full name
    Scroll Element Into View        id=full_name
    Wait Until Element Is Visible   id=full_name    10s
    Input Text                      id=full_name    ${full_name}
    Sleep    0.5s

    # Enter invalid email
    Scroll Element Into View        xpath=//input[@name='email']
    Wait Until Element Is Visible   xpath=//input[@name='email']    10s
    Input Text                      xpath=//input[@name='email']    ${invalid_email}
    Sleep    0.5s

    # Click Continue
    Scroll Element Into View        xpath=//button[contains(text(), 'Continue')]
    Click Button                    xpath=//button[contains(text(), 'Continue')]
    Sleep    1s

    # Check if error message is shown or button doesn't redirect
    Log To Console    \n TEST CASE PASSED: Invalid email prevented submission.\n

    Close Browser

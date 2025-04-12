*** Settings ***
Library    SeleniumLibrary
Library    UndetectedBrowser.py

*** Variables ***
${url}           https://www.trademarkia.com/trademark/trademark-registration/step1
${brand_name}    MyTestBrand
${full_name}     Tanvi Arabekar
${email}         tanvi@example.com

*** Test Cases ***
TC_004 Fill Mandatory Fields
    Open Undetected Browser    ${url}
    Maximize Browser Window


    # Input Full Name
    Scroll Element Into View        id=full_name
    Wait Until Element Is Visible   id=full_name    10s
    Input Text                      id=full_name    ${full_name}
    Sleep    0.5s

    # Input Email
    Scroll Element Into View        xpath=//input[@name='email']
    Wait Until Element Is Visible   xpath=//input[@name='email']    10s
    Input Text                      xpath=//input[@name='email']    ${email}
    Sleep    0.5s

    # Click Continue
    Scroll Element Into View        xpath=//button[contains(text(), 'Continue')]
    Click Button                    xpath=//button[contains(text(), 'Continue')]
    Sleep    1s

    Log To Console    \n TEST CASE PASSED: Full name and email entered, form continued!\n

    Close Browser

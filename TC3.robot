*** Settings ***
Library    SeleniumLibrary
Library    UndetectedBrowser.py

*** Variables ***
${url}         https://www.trademarkia.com/trademark/trademark-registration/step1
${brand_name}  MyTestBrand

*** Test Cases ***
Your Test Case
    Open Undetected Browser    ${url}
    Maximize Browser Window

    # Accept Cookies if present
    Run Keyword And Ignore Error    Wait Until Element Is Visible    xpath=//button[contains(text(), 'Accept')]    10s
    Run Keyword And Ignore Error    Click Element    xpath=//button[contains(text(), 'Accept')]
    Sleep    1s



    # Checkboxes
    Select Checkbox                  xpath=//input[@name='is_name_protected']
    Sleep    0.5s
    Select Checkbox                  xpath=//input[@name='is_logo_protected']
    Sleep    0.5s
    Select Checkbox                  xpath=//input[@name='is_slogan_protected']
    sleep    0.5s
    Select Checkbox                  xpath=//input[@name='is_sound_protected']
    sleep    0.5s

    Unselect Checkbox               xpath=//input[@name='is_name_protected']
    Unselect Checkbox               xpath=//input[@name='is_logo_protected']
    Unselect Checkbox               xpath=//input[@name='is_slogan_protected']
    Unselect Checkbox               xpath=//input[@name='is_sound_protected']



 Enter Brand Name Field
    Open Undetected Browser    ${url}
    Maximize Browser Window
    Wait Until Element Is Visible   xpath=//input[@name='mark_name']    10s
    Input Text                      xpath=//input[@name='mark_name']    ${brand_name}











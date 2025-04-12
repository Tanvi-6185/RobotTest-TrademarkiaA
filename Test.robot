*** Settings ***
Library    SeleniumLibrary
Library    UndetectedBrowser.py

*** Variables ***
${url}         https://www.trademarkia.com/trademark/trademark-registration/step1
${brand_name}  MyTestBrand

*** Test Cases ***
Enter Brand Name Field
    Open Undetected Browser    ${url}
    Maximize Browser Window
    Wait Until Element Is Visible   xpath=//input[@name='mark_name']    10s
    Input Text                      xpath=//input[@name='mark_name']    ${brand_name}




*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://www.trademarkia.com/
${browser}  chrome

*** Test Cases ***
TC_002 Verify Apply for Copyright Button
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//button[contains(text(), 'Apply for Trademark')]
    Element Should Be Visible        xpath=//button[contains(text(), 'Apply for Trademark')]
    Click Element                    xpath=//button[contains(text(), 'Apply for Trademark')]
    Close Browser


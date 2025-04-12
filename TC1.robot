*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://www.trademarkia.com/
${browser}  chrome

*** Test Cases ***
TC_001 Navigate to Trademarkia Website
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Title Should Be    Trademark Search, Free, for Millions of Registered Trademarks with USPTO | Trademarkia
    Close Browser

*** Settings ***
Library    SeleniumLibrary
Library    UndetectedBrowser.py

*** Variables ***
${url_home}      https://www.trademarkia.com/
${url_step1}     https://www.trademarkia.com/trademark/trademark-registration/step1
${brand_name}    MyTestBrand
${full_name}     Tanvi Arabekar
${email}         tanishkaarabekar25@gmail.com
${slogan}        Your Awesome Slogan
${country}       India

*** Test Cases ***
TC_006_EndToEndTrademarkFlow
    Open Undetected Browser    ${url_home}
    Maximize Browser Window
    Sleep    1s

    # Step 0 - Homepage → Click Apply
    Wait Until Element Is Visible    xpath=//button[contains(text(), 'Apply for Trademark')]    10s
    Click Element                    xpath=//button[contains(text(), 'Apply for Trademark')]
    Sleep    3s

    # Accept Cookies
    Run Keyword And Ignore Error    Click Element    xpath=//button[contains(text(), 'Accept')]
    Sleep    1s

    # Step 1 - Select checkboxes
    Select Checkbox    xpath=//input[@name='is_name_protected']
    Select Checkbox    xpath=//input[@name='is_logo_protected']
    Select Checkbox    xpath=//input[@name='is_slogan_protected']
    Select Checkbox    xpath=//input[@name='is_sound_protected']

    # Enter name and slogan
    Scroll Element Into View    xpath=//input[@name='mark_name']
    Input Text                  xpath=//input[@name='mark_name']    ${brand_name}
    Sleep    0.5s

    Scroll Element Into View    xpath=//input[@name='slogan']
    Input Text                  xpath=//input[@name='slogan']    ${slogan}
    Sleep    0.5s

    # Continue to Step 2
    Scroll Element Into View    xpath=//button[contains(text(), 'Continue')]
    Click Button                xpath=//button[contains(text(), 'Continue')]
    Sleep    3s

    # Step 2 - Owner Info
    Scroll Element Into View    xpath=//input[@name='full_name']
    Input Text                  xpath=//input[@name='full_name']    ${full_name}
    Input Text                  xpath=//input[@name='email']        ${email}
    Sleep    1s

    # Click Continue
    Scroll Element Into View        xpath=//button[contains(text(), 'Continue')]
    Click Button                    xpath=//button[contains(text(), 'Continue')]
    Sleep    3s

    # Step 3 - Continue Process
    Log To Console    \n Waiting for 'Continue Process' button on Step 3...\n
    Wait Until Element Is Visible    xpath=//button[contains(text(), 'Continue Process')]    30s
    Wait Until Element Is Enabled    xpath=//button[contains(text(), 'Continue Process')]    15s
    Scroll Element Into View         xpath=//button[contains(text(), 'Continue Process')]
    Sleep    1s
    Run Keyword And Ignore Error     Click Button    xpath=//button[contains(text(), 'Continue Process')]
    Sleep    2s
    Run Keyword And Ignore Error     Execute JavaScript    arguments[0].click();    xpath=//button[contains(text(), 'Continue Process')]
    Sleep    2s

    Log To Console    \n Step 3 completed: Proceeded to Step 4\n
    Sleep    2s

    # Step 5 - Continue Process
    Log To Console    \n Waiting for 'Continue Process' button on Step 3...\n
    Wait Until Element Is Visible    xpath=//button[contains(text(), 'Continue Process')]    30s
    Wait Until Element Is Enabled    xpath=//button[contains(text(), 'Continue Process')]    15s
    Scroll Element Into View         xpath=//button[contains(text(), 'Continue Process')]
    Sleep    1s
    Run Keyword And Ignore Error     Click Button    xpath=//button[contains(text(), 'Continue Process')]
    Sleep    2s
    Run Keyword And Ignore Error     Execute JavaScript    arguments[0].click();    xpath=//button[contains(text(), 'Continue Process')]
    Sleep    2s

    Log To Console    \n Step 5 completed: Proceeded to Step 4\n
    Sleep    2s


   #  Search for Country: India
    Wait Until Element Is Visible    xpath=//input[@placeholder="Search for a country"]    15s
    Input Text                       xpath=//input[@placeholder="Search for a country"]    ${country}
    Sleep    1s


    #  Select checkbox near India text
    Wait Until Element Is Visible    xpath=//h2[text()='India']/ancestor::div[contains(@class, 'cursor-pointer')]//input[@type='checkbox']
    Click Element                    xpath=//h2[text()='India']/ancestor::div[contains(@class, 'cursor-pointer')]//input[@type='checkbox']

    Sleep    1s


    Log To Console    \n Country 'India' checkbox successfully selected!\n
    Sleep    1s

    # Step 5 - Continue Process
    Log To Console    \n Waiting for 'Continue Process' button on Step 3...\n
    Wait Until Element Is Visible    xpath=//button[contains(text(), 'Continue Process')]    30s
    Wait Until Element Is Enabled    xpath=//button[contains(text(), 'Continue Process')]    15s
    Scroll Element Into View         xpath=//button[contains(text(), 'Continue Process')]
    Sleep    1s
    Run Keyword And Ignore Error     Click Button    xpath=//button[contains(text(), 'Continue Process')]
    Sleep    2s
    Run Keyword And Ignore Error     Execute JavaScript    arguments[0].click();    xpath=//button[contains(text(), 'Continue Process')]
    Sleep    2s
    Close Browser



*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Test Example
        # Open the browser
    Open Browser                        http://career-scout.pengwin.broseidon.wimmalab.org/         chrome      
    Maximize Browser Window

        # Change the language

    Click Element                       class=theme-toggle
    Select From List By Value           css=select.langs                                            en

        # Find an existing text

    Element Text Should Be              css=\#app > div > div.content > div > div > h1              Welcome to Career Scouter!

    Wait Until Page Contains Element    //*[@id="app"]/div/div[1]/div/div[3]/a[2]                   1
    Click Element                       //*[@id="app"]/div/div[1]/div/div[3]/a[2]
    Wait Until Page Contains Element    //*[@id="app"]/div/div[2]/div/div/div[1]/div/div/div[1]/a   1

    Click Element                       //*[@id="app"]/div/div[2]/div/div/div[1]/div/div/div[1]/a

    Element Text Should Be              css=\#app > div > div.content > div > div > div.right > div > div.career_header > div.career_personal > div > h4     Name: Sarah Johnson

    Click Element                       //*[@id="app"]/div/div[2]/div/div/div[1]/div/div/div[2]/a
    
    Click Element                       //*[@id="app"]/div/div[2]/div/div/div[1]/div/div/div[3]/a

    Click Element                       //*[@id="app"]/div/div[2]/div/div/div[1]/div/div/div[4]/a

    Click Element                       //*[@id="app"]/div/div[2]/div/div/div[1]/div/div/div[5]/a

    Click Element                       //*[@id="app"]/div/div[1]/div/div[3]/a[5]

    Wait Until Page Contains Element    //*[@id="app"]/div/div[1]/div/div[3]/a[5]                   1
    Element Text Should Be              css=\#app > div > div.content > div > h1                    GDPR
    Element Text Should Be              css=\#app > div > div.content > div > h3:nth-child(2)       Processing of student information

    Close Browser
*** Settings ***
Library                             SeleniumLibrary
Variables                           ../Resources/swag_locator.yaml

*** Keywords ***
Open Browser Chrome
    Open Browser                    browser=chrome
    Maximize Browser Window

Go to SwagLabs Page
    Go To                           https://www.saucedemo.com/

I am inputting invalid Username
    Input text                      //input[@id="user-name"]                    Miftah

I am inputting invalid Password
    Input text                      //input[@id="password"]                     Miftah

I am Click Login Button
    Click Element                   //input[@id="login-button"]

Message error will be appear on the screen
    Element Should Be Visible       //div[@class="error-message-container error"]

I am inputting valid Username
    Input text                      //input[@id="user-name"]                    standard_user

I am inputting valid Password
    Input text                     //input[@id="password"]                      secret_sauce

Dashbord page will be appear
    Page Should Contain                                                         Products
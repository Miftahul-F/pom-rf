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
    Input text                      ${txtUsername}                    Miftah

I am inputting invalid Password
    Input text                      ${txtPassword}                    Miftah

I am Click Login Button
    Click Element                   ${buttonlogin}

Message error will be appear on the screen
    Element Should Be Visible       ${errorMessage}

I am inputting valid Username
    Input text                      ${txtUsername}                    standard_user

I am inputting valid Password
    Input text                      ${txtPassword}                    secret_sauce

Dashboard page will be appear
    Wait Until Page Contains                                    Products
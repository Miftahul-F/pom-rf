*** Settings ***
Resource                                    ../Resources/login_page_keywords.robot
Suite Setup                                 Open Browser Chrome
Suite Teardown                              Close Browser

*** Test Cases ***
I am Login with invalid username and invalid password
    [Tags]                                  Negative Test Log in
    Go to SwagLabs Page
    I am inputting invalid Username
    I am inputting invalid Password
    I am Click Login Button
    Message error will be appear on the screen

I am Login with valid username and invalid password
    [Tags]                                  Negative Test Log in
    I am inputting valid Username
    I am inputting invalid Password
    I am Click Login Button
    Message error will be appear on the screen

I am Login with invalid username and valid password
    [Tags]                                  Negative Test Log in
    I am inputting invalid Username
    I am inputting valid Password
    I am Click Login Button
    Message error will be appear on the screen

I am Login with valid username and valid password
    [Tags]                                  Positive Test Log in
    I am inputting valid Username
    I am inputting valid Password
    I am Click Login Button
    Dashboard page will be appear
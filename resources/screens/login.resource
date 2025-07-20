*** Settings ***
Documentation        Elements and actions from the Login Screen

Library              AppiumLibrary

*** Variables ***
${API_IP}        172.17.128.1

*** Keywords ***
Do Login
    Input Text       xpath=//*[@resource-id="apiIp"]           ${API_IP}
    Click Element    xpath=//*[@resource-id="signInButton"]    
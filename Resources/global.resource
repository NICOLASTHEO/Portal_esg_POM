*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Start Browser
    Open Browser        ${url_portal}        ${browser}
    Maximize Browser Window
End Browser
    Capture Page Screenshot
    Close Browser

*** Variables ***
${url_portal}        https://portal.xxxxxxxxxxxx.com
${browser}           chrome  

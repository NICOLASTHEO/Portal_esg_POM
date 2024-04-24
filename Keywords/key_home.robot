*** Settings ***
Library                    SeleniumLibrary
Resource                   ../Variaveis/var_home.robot

*** Keywords ***
Então devo ser redirecionado a minha tela de Home
    Wait Until Element Is Visible         ${msg_boas_vindas}
E vejo a msg de "${msg}"
    [Arguments]        
    Page Should Contain                    ${msg}

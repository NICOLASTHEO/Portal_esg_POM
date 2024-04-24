*** Settings ***
Library                    SeleniumLibrary
Resource                   ../Variaveis/var_login.robot
Resource                   ../dados_sensiveis/dados.robot

*** Keywords ***
Dado que acesso o Portal de empresas ESG
    Title Should Be     ${title_login}
Quando Realizo login
    Input Text          ${input_email}        ${meu_email}
    Input Password      ${input_pw}           ${minha_senha}
    Click Element       ${btn_login}
Quando Realizo login sem informar meu email
    Input Password      ${input_pw}           ${minha_senha}
    Click Element       ${btn_login}
Então vejo msg de email obrigatorio
    Wait Until Element Is Visible               ${msg_email_required}
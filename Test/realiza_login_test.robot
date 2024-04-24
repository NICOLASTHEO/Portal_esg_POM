*** Settings *** 
Documentation                   para rodar os testes digite isso: rm -rf Results/* && robot -d Results realiza_login_test.robot
Library                         SeleniumLibrary
Resource                        ../dados_sensiveis/dados.robot
Resource                        ../Resources/global.resource
Resource                        ../Keywords/key_login.robot
Resource                        ../Keywords/key_home.robot
Test Setup                      Start Browser
Test Teardown                   End Browser

*** Test Cases ***
CT01 - Realiza login com sucesso
    [Tags]    login_sucesso    login
    Dado que acesso o Portal de empresas ESG
    Quando Realizo login
    Então devo ser redirecionado a minha tela de Home
    E vejo a msg de "Bem Vindo"
CT02 - Realiza login sem email
    [Tags]    login_sem_email    login
    Dado que acesso o Portal de empresas ESG
    Quando Realizo login sem informar meu email
    Então vejo msg de email obrigatorio









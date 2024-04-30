*** Settings ***
Documentation    Esse arquivo possui os casos de teste de login
Resource    ../resources/main.robot

*** Test Cases ***
CT01 - Login com Sucesso
    Acessar Pagina de login
    Inserir email
    Inserir password
    Clicar no botão
    URL é home

CT02 - Email inválido
    Acessar Pagina de login
    Inserir email inválido
    Inserir password
    Clicar no botão
    Pagina contem mensagem de erro

CT03 - Senha inválida
    Acessar Pagina de login
    Inserir email
    Inserir password inválida
    Clicar no botão
    Pagina contem mensagem de erro

CT04 - Email em branco
    Acessar Pagina de login
    Inserir password
    Clicar no botão
    Pagina contem mensagem de erro
    

CT05 - Senha em branco
    Acessar Pagina de login
    Inserir email
    Clicar no botão
    Pagina contem mensagem de erro

CT06 - Senha e email em branco
    Acessar Pagina de login
    Clicar no botão
    Pagina contem mensagem de erro


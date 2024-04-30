*** Settings ***
Documentation    Esse arquivo possui as keywords de login - puxadas pelo login.robot
Resource    ../main.robot

*** Keywords ***
Acessar Pagina de login
    Open Browser    ${URL_LOGIN}    ${NAVEGADOR}
    Wait Until Location Is    ${URL_LOGIN}
    Capture Page Screenshot    pagina_aberta.png



Inserir email
    Preencher Campo    ${CAMPO_EMAIL}    ${EMAIL}

Inserir email inválido
    Preencher Campo    ${CAMPO_EMAIL}    ${EMAIL_INVÁLIDO}

Inserir password
    Preencher Campo    ${CAMPO_SENHA}    ${PASSWORD}

Inserir password inválida
    Preencher Campo    ${CAMPO_SENHA}    ${PASSWORD_INVÁLIDA}



Clicar no botão
    Click Element    ${BOTAO_LOGIN}
    



URL é home
    Wait Until Location Is    ${URL_HOME}
    Location Should Be    ${URL_HOME}
    Capture Page Screenshot    login_feito.png

Pagina contem mensagem de erro
    Wait Until Element Is Visible    ${MSG_LOGIN_INVALIDO}
    Element Should Be Visible    ${MSG_LOGIN_INVALIDO}
    Capture Page Screenshot    mensagem_de_erro.png
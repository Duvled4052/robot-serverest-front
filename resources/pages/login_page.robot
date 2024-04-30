*** Settings ***
Documentation    mapear elementos da página de login

*** Variables ***
${CAMPO_EMAIL}    //*[@id="email"]
${CAMPO_SENHA}    //*[@id="password"]
${BOTAO_LOGIN}    //button[contains(text(), "Entrar")]

${MSG_LOGIN_INVALIDO}    //div[@class="alert alert-secondary alert-dismissible"]
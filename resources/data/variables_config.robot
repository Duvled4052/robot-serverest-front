*** Settings ***
Documentation    Esse arquivo contém as variáveis de configuração do sistema - vão ser puxadas pelo main.robot
Resource    ../main.robot

*** Variables ***

${URL_LOGIN}    https://front.serverest.dev/login
${URL_HOME}    https://front.serverest.dev/admin/home

${NAVEGADOR}    edge

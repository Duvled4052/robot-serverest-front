*** Settings ***
Documentation    Lugar para funções úteis que podem ser reutilizadas ao longo da aplicação
Resource    ../main.robot

*** Keywords ***
Preencher Campo
    [Arguments]    ${LOCATOR}    ${TEXT}
     Wait Until Element Is Visible    ${LOCATOR}
    Input Text    ${LOCATOR}    ${TEXT}

Clicar no elemento
    [Arguments]    ${LOCATOR}
    Wait Until Element Is Visible    ${LOCATOR}
    Click Element    ${LOCATOR}
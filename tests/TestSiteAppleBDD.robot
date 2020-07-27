*** Settings ***
Resource         ../resource/Resource.robot
Test Setup        Abrir navegador
#Test Teardown     Fechar navegador
#SETUP ele roda o Keywords antes da suite ou antes de um teste
# TEARDOWN ele roda o Keywords de uma suite ou um teste

#Suite Setup Abrir navegador
#Teste Setup
# Suite Teardown Fechar navegador
#Test Teardown
# se o teste tiver o Setup e um TEARDOWN ele exuta apenas para o caso que esta o setup e o Teardown

*** Variables ***
${URL}      https://www.apple.com/br/shop
${BROWSER}    chrome

*** Test Cases ***
Cenário: Pesquisar produto existente
    Acessar a página home do site
    Quando clicar no menu iphone
    E clicar no submenu iphone 11
    E clicar no botão comprar
    E escolher a cor verde
    E valida continuacao
    E escolher a capacidade 128G
    E valida sacola
    E clicar no botão colocar na sacola
    E entrar na sacola
    Entao validar sacola
    Fechar navegador
        #Entao Valido a Compra efetuada com sucesso

#*** Keywords ***

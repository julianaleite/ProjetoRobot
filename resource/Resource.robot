*** Settings ***
# RESOURCE é a implementao da Keywords
Library  SeleniumLibrary
*** Variables ***
${URL}  https://www.apple.com/br/shop
${BROWSER}  chrome

*** Keywords ***
## SETUP e TEARDOWN
# Deixar o navegador da Library sempre abertp pra consultar  a documentaçao > sessao Shortcuts para saber como escrever os comandos clico no comando pra saber como ele funciona
Abrir navegador
    Open Browser  https://www.apple.com/br/shop  ${BROWSER}

    ## passo a passo
Acessar a página home do site
    Go To   https://www.apple.com/br/shop
    #Title Should Be  Apple Store Online - Apple (BR)

Quando clicar no menu iphone
    Click Element  xpath://*[@id="ac-globalnav"]/div/ul[2]/li[4]/a

E clicar no submenu iphone 11
    Click Element  xpath://*[@id="chapternav"]/div/ul/li[2]

E clicar no botão comprar
    Click Element  xpath://*[@id="ac-localnav"]/div/div[2]/div[2]/div[2]/div[2]/a

E escolher a cor verde
    Click Element  id:Item1green_label

E valida continuacao
    Wait Until Page Contains  Escolha a capacidade
    #Click Element    css=#Item2 > div > fieldset > div > div:nth-child(2) > div
    #Click Element  id:Item2128gb_label
    #Wait Until Page Contains      Colocar na Sacola
    #Click Element  xpath://*[@id="primary"]/summary-builder/div[2]/div[1]/div/div/div[2]/div/div/form/div/span/button/span
E escolher a capacidade 128G
    Click Element  id:Item2128gb_label

E valida sacola
    Wait Until Page Contains  Colocar na sacola

E clicar no botão colocar na sacola
#    Wait Until Element Is visible  id:Item2128gb_label
    Click Button  name:add-to-cart

E entrar na sacola
    Click Button  name:proceed

Entao validar sacola
    Wait Until Page Contains  Veja o que está na sua sacola

Fechar navegador
    Close Browser

*** Settings ***
Library     SeleniumLibrary

*** Variable ***
${BROWSER}      chrome
${URL}          http://automationpractice.com/index.php

*** Keywords ***  
Acessar a página home do site da loja
    Open Browser    url=${URL}      browser=${BROWSER} 

Digitar o produto "${PRODUTO}" no campo de pesquisa 
    Input Text        id=search_query_top     ${PRODUTO}

Clica no botão Pesquisar
    click Button   name=submit_search

Conferir se o produto "blouse" foi exibido corretamente
    Wait Until Element Is Visible   xpath=//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img

Clicar na blouse escolhida  
    click Element     xpath=//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img

Desça a tela 
    Scroll Element Into View    xpath=//*[@id="add_to_cart"]/button/span

Colocar no carrinho 
    click Element     xpath=//*[@id="add_to_cart"]/button/span 

Clicar em Proceed to checkout
    click button      class=btn btn-default button button-medium

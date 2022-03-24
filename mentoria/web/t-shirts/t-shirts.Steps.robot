*** Settings ***
Resource        t-shirts.Page.robot
Resource        t-shirts.Tests.robot


*** Keywords ***  
Dado que quero acessar a página home do site da loja
    Open Browser    url=${URL}      browser=${BROWSER} 

E digito o produto "${PRODUTO}" no campo de pesquisa 
    Input Text        id=search_query_top     ${PRODUTO}

Quando clico no botão Pesquisar
    click Button   ${BTN_PESQUISAR}

Então conferiro se o produto "blouse" foi exibido corretamente
    Wait Until Element Is Visible   xpath=//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img

Clicar na blouse escolhida  
    click Element     xpath=//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img

Colocar no carrinho 
    click Element     xpath=//*[@id="add_to_cart"]/button

Clicar em Proceed to checkout
    Click Link      http://automationpractice.com/index.php?controller=order

Clicar na página T-shirts
    click Element     xpath=//*[@id="block_top_menu"]/ul/li[*]/a[contains(.,'T-shirts')]

Escolha Faded Short Sleeve T-shirts
    click Element  xpath=//*[@id="center_column"]/ul/li/div/div[2]/h5/a

Imprima a mensagem na tela
    log to console      ${\n}Legal! Executei meu primeiro teste 
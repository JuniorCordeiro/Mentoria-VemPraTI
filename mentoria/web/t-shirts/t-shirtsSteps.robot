*** Settings ***
Resource        t-shirtsPage.robot
Resource        t-shirtsTests.robot

*** Keywords ***  
Dado que quero acessar a página home do site da loja
    Open Browser    url=${URL}      browser=${BROWSER}

Dado que estou na aba T-Shirts
    No Operation

Dado que estou na Home
    Click Button    Home

E digito o produto "${PRODUTO}" no campo de pesquisa 
    Input Text        id=search_query_top     ${PRODUTO}

Quando clico no botão Pesquisar
    click Button   ${BTN_PESQUISAR}

Então conferiro se o produto "blouse" foi exibido corretamente
    Wait Until Element Is Visible   css=div.left-block

Dado que Clico na blouse escolhida   
    click Element     css=div.left-block

E coloco no carrinho
    click Element     xpath=//*[@id="add_to_cart"]/button

Então Clico em Proceed to checkout
    Click Link      http://automationpractice.com/index.php?controller=order

Dado que quando clico na página T-shirts
    click Element     xpath=//*[@id="block_top_menu"]/ul/li[*]/a[contains(.,'T-shirts')]


E escolha Faded Short Sleeve T-shirts
    click Element  xpath=//*[@id="center_column"]/ul/li/div/div[2]/h5/a

Quando Coloco no carrinho blusa 2
    click Element     xpath=//*[@id="add_to_cart"]/button

Então Clico em Proceed to checkout finalizando compra
    Click Link      http://automationpractice.com/index.php?controller=order
    wait Until Element is Visible       css=a.button.btn.btn-default.standard-checkout.button-medium
    click Element       css=a.button.btn.btn-default.standard-checkout.button-medium


E seleciono o Title Mrs 
    wait Until Element is Visible       css=div#uniform-id_gender2
    click element   css=div#uniform-id_gender2


E Preencho City Alabama
    seleciono campo CIDADE/UF    ${CAMPO_CIDADE}     ${TXT_ALABAMA}

E Preencho estado valido
    seleciono campo CIDADE/UF    ${CAMPO_UF}     ${TXT_CIDADE}         

E Preencho estado invalido
    seleciono campo CIDADE/UF    ${CAMPO_UF}     ${TXT_CIDADE_INVAL}         

E preencho os dados de pagamento
    Click Element    class=bankwire    

Então finalizo a compra
    Click Element    ${BTN_PROSSEGUIR}
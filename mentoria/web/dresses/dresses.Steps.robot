*** Settings ***
Resource        dresses.Page.robot
Resource        dresses.Tests.robot


*** Keywords ***  
Dado que quero acessar a página home do site da loja
    Open Browser    url=${URL}      browser=${BROWSER} 

E digito o produto "${PRODUTO}" no campo de pesquisa 
    Input Text        id=search_query_top     ${PRODUTO}

Quando clico no botão Pesquisar
    click Button   ${BTN_PESQUISAR}

Então confiro se o produto "dresses" foi exibido corretamente
    Element Should Be Visible    src=http://automationpractice.com/img/p/1/2/12-home_default.jpg

Dado que Clico no dresses escolhida   
    click Element     href=href="http://automationpractice.com/index.php?id_product=5&controller=product&search_query=dresses&results=7"

E coloco no carrinho
    click Element     xpath=//*[@id="add_to_cart"]/button

Então Clico em Proceed to checkout
    Click Link      src=http://automationpractice.com/index.php?controller=order

Dado que quando clico na página dresses
    click Element    class=sf-with-ul


E escolha Printed Chiffon Dress
    click Element      class=replace-2x img-responsive

Quando Coloco no carrinho o dresses 2
    click Element     xpath=//*[@id="add_to_cart"]/button

Então Clico em Proceed to checkout finalizando compra
    Click Link      http://automationpractice.com/index.php?controller=order
    wait Until Element is Visible       css=a.button.btn.btn-default.standard-checkout.button-medium
    click Element       css=a.button.btn.btn-default.standard-checkout.button-medium


E seleciono o Title Mr
    wait Until Element is Visible       css=div#uniform-id_gender2
    click element   css=div#uniform-id_gender2

E Preencho o primeiro nome ""

E Preencho City Alabama
    Click Element       css=input#city   
    Press Keys          css=input#city         Alabama

E Preencho estado
    Click Element       css=div#uniform-id_state
    Press Keys          css=div#uniform-id_state     Alabama




    

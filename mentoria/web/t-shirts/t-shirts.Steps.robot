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
    Wait Until Element Is Visible   css=div.left-block

Clicar na blouse escolhida  
    click Element     css=div.left-block

Colocar no carrinho 
    click Element     xpath=//*[@id="add_to_cart"]/button

Clicar em Proceed to checkout
    Click Link      http://automationpractice.com/index.php?controller=order

Clicar na página T-shirts
    click Element     xpath=//*[@id="block_top_menu"]/ul/li[*]/a[contains(.,'T-shirts')]

Escolha Faded Short Sleeve T-shirts
    click Element  xpath=//*[@id="center_column"]/ul/li/div/div[2]/h5/a

Colocar no carrinho blusa 2
    click Element     xpath=//*[@id="add_to_cart"]/button

Clicar em Proceed to checkout finalizando compra
    Click Link      http://automationpractice.com/index.php?controller=order
    wait Until Element is Visible       css=a.button.btn.btn-default.standard-checkout.button-medium
    click Element       css=a.button.btn.btn-default.standard-checkout.button-medium

Criar uma conta no site digitando o email "${EMAIL}"
    wait Until Element is Visible       xpath=//*[@id="email_create"]
    Input Text      xpath=//*[@id="email_create"]        ${EMAIL}
    Click Element   Css=button#SubmitCreate

Imprima a mensagem na tela
    log to console      ${\n}Legal! Executei meu primeiro teste 

Selecionar o Title Mrs
    wait Until Element is Visible       css=div#uniform-id_gender2
    click element   css=div#uniform-id_gender2

Colocar primeiro nome "${Primeironome}"
    Input Text      id=customer_firstname        ${Primeironome}

Colocar o ultimo nome "${UltimoNome}"
    Input Text      customer_lastname       ${UltimoNome}

Criar uma senha "${Senha}"
    Input Text     css=input#passwd.is_required.validate      ${Senha}

Preencher dados de nascimento 
    Click Element       id=uniform-days
    Press Keys          id=uniform-days     15
    Click Element       id=months
    Press Keys          id=months     march
    Click Element       id=years
    Press Keys          id=years     1991

Preencher dados da empresa "${empresa}"
    Input Text      css=input#company       ${empresa}

Preencher dados do endereço "${endereço}"
    Input Text      css=input#address1      ${endereço}

Prencher estado Alabama
    Click Element       css=input#city   
    Press Keys          css=input#city         Alabama

Preencher estado
    Click Element       css=div#uniform-id_state
    Press Keys          css=div#uniform-id_state     Alabama

Prencher Zip/Postal Code "${cep}"
    Input Text      css=input#postcode    ${cep}

informação adicional "${infoadicional}"   
    Input Text      css=textarea#other    ${infoadicional}

Preencher telefone "${fixo}"
    Input Text      css=input#phone    ${fixo}

Preencher Celular "${mobile}"
    Input Text      css=input#phone_mobile    ${mobile}

Preencher ponto de referencia "${referencia}"
    Input Text      css=input#alias    ${referencia}

Clicar registrar
    click Element   css=div.submit.clearfix

    

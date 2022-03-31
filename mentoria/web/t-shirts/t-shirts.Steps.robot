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

Dado que Clico na blouse escolhida   
    click Element     css=div.left-block

E coloco no carrinho
    click Element     xpath=//*[@id="add_to_cart"]/button

Então Clico em Proceed to checkout
    Click Link      http://automationpractice.com/index.php?controller=order

<<<<<<< HEAD
Dado que quando clico na página T-shirts
    click Element     xpath=//*[@id="block_top_menu"]/ul/li[*]/a[contains(.,'T-shirts')]
=======
Clicar na página T-shirts
    click Element     ${ABA_T-SHIRTS}
>>>>>>> c780ba318b6b109c6e825fa487f28ebb53a942ba

E escolha Faded Short Sleeve T-shirts
    click Element  xpath=//*[@id="center_column"]/ul/li/div/div[2]/h5/a

Quando Coloco no carrinho blusa 2
    click Element     xpath=//*[@id="add_to_cart"]/button

Então Clico em Proceed to checkout finalizando compra
    Click Link      http://automationpractice.com/index.php?controller=order
    wait Until Element is Visible       css=a.button.btn.btn-default.standard-checkout.button-medium
    click Element       css=a.button.btn.btn-default.standard-checkout.button-medium

Dado que preciso criar uma conta no site digitando o email "${EMAIL}"
    wait Until Element is Visible       xpath=//*[@id="email_create"]
    Input Text      xpath=//*[@id="email_create"]        ${EMAIL}
    Click Element   Css=button#SubmitCreate

E seleciono o Title Mrs 
    wait Until Element is Visible       css=div#uniform-id_gender2
    click element   css=div#uniform-id_gender2

E Coloco o primeiro nome "${Primeironome}"
    Input Text      id=customer_firstname        ${Primeironome}

E Coloco o ultimo nome "${UltimoNome}"
    Input Text      customer_lastname       ${UltimoNome}

E Crio uma senha "${Senha}"
    Input Text     css=input#passwd.is_required.validate      ${Senha}

E Preencho dados de nascimento  
    Click Element       id=uniform-days
    Press Keys          id=uniform-days     15
    Click Element       id=months
    Press Keys          id=months     march
    Click Element       id=years
    Press Keys          id=years     1991

E Preencho dados da empresa "${empresa}"
    Input Text      css=input#company       ${empresa}

E Preencho dados do endereço "${endereço}"
    Input Text      css=input#address1      ${endereço}

E Preencho estado Alabama
    Click Element       css=input#city   
    Press Keys          css=input#city         Alabama

E Preencho estado
    Click Element       css=div#uniform-id_state
    Press Keys          css=div#uniform-id_state     Alabama

E Preencho Zip/Postal Code "${cep}"
    Input Text      css=input#postcode    ${cep}

E Preencho informação adicional "${infoadicional}"   
    Input Text      css=textarea#other    ${infoadicional}

E Preencho telefone "${fixo}"
    Input Text      css=input#phone    ${fixo}

E Preencho Celular "${mobile}"
    Input Text      css=input#phone_mobile    ${mobile}

E Preencho ponto de referencia "${referencia}"
    Input Text      css=input#alias    ${referencia}

Então Clico registrar
    click Element   css=div.submit.clearfix

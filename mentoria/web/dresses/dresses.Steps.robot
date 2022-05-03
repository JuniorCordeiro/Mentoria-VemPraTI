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
    Element Should Be Visible  class=lighter

Dado que Clico no dresses escolhida   
    click Element     title=Printed Chiffon Dress

E coloco no carrinho
    click Element     xpath=//*[@id="add_to_cart"]/button

Então Clico em Proceed to checkout
    Click Link      class=icon-chevron-right right
Dado que quando clico na página dresses
    click Element    class=sf-with-ul


E escolha Printed Chiffon Dress
    click Element      xpath=//*[@id="center_column"]/ul/li[5]/div/div[2]/div[2]/a[1]/span

Quando Coloco no carrinho o dresses 2
    click Element     css=#add_to_cart > button > span

Então Clico em Proceed to checkout finalizando compra
    Click Link      http://automationpractice.com/index.php?controller=order
    wait Until Element is Visible       css=a.button.btn.btn-default.standard-checkout.button-medium
    click Element       css=a.button.btn.btn-default.standard-checkout.button-medium
Dado que preencho email para criar conta "${INPUT_EMAIL}"    
    Input Text    id=email_create    ${INPUT_EMAIL}    
E seleciono o Title Mr
    wait Until Element is Visible       css=div#uniform-id_gender2
    click element   css=div#uniform-id_gender2

E Preencho o primeiro nome "${INPUT_FIRSTNAME}"
    Input text    id=customer_firstname     ${INPUT_FIRSTNAME}
E Preencho o ultimo nome "${INPUT_LASTNAME}"
    Input Text    id=customer_lastname    ${INPUT_LASTNAME}
E Crio uma senha "${INPUT_PASSWORD}"
    Input Text    id=passwd        ${INPUT_PASSWORD}
E Preencho dados de nascimento  
    [Arguments]    ${D_T-DIA}    ${D_T-MES}    ${D_T-ANO}
    Click Element       id=uniform-days
    Press Keys          id=uniform-days     ${D_T-DIA}
    Click Element       id=months
    Press Keys          id=months     ${D_T-MES}
    Click Element       id=years
    Press Keys          id=years     ${D_T-ANO}
 E Preencho nome da empresa "${INPUT_NAME_EMPRESA}"
    Input Text    id=firstname  ${INPUT_NAME_EMPRESA}  
E Preencho o último nome da empresa "${INPUT_LASTNAME_EMPRESA}"
    Input Text    id=lastname    ${INPUT_LASTNAME_EMPRESA}
E Preencho dados do endereço "${INPUT_ENDEREÇO_EMPRESA}"
    Input Text    id=address1    ${INPUT_ENDEREÇO_EMPRESA}
E Preencho City Boston
    Click Element       css=input#city   
    Press Keys          css=input#city         Boston
E Preencho estado Massachussets
    Click Element       css=div#uniform-id_state
    Press Keys          css=div#uniform-id_state     Massachussets
E Preencho Zip/Postal Code "${INPUT_POSTAL_CODE}"
    Input Text    id=postcode    ${INPUT_POSTAL_CODE}
E Preencho informação adicional "${INPUT_INFO_ADICIONAL}"
    Input Text    id=other    ${INPUT_INFO_ADICIONAL}
E Preencho telefone "${INPUT_TELEFONE}"
    Input Text    id=phone    ${INPUT_TELEFONE}
E Preencho Celular "${INPUT_CELULAR}"
    Input Text    id=phone_mobile    ${INPUT_CELULAR}
E Preencho ponto de referencia "${INPUT_REFERENCIA}"
    Input Text    id=alias    ${INPUT_REFERENCIA}
Então Clico registrar
    Click Button    id=submitAccount

    

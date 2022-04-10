*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}      chrome
${URL}          http://automationpractice.com/index.php
${SIGNIN}       href:http://automationpractice.com/index.php?controller=my-account
${SEXO}         id:id_gender1
${NOME}         id:customer_firstname
${SOBRENOME}    id:customer_lastname
${SENHA}        id:isPasswd
${DIA}          id:days
${MES}          id:months
${ANO}          id:years
${NOME2}        id:firstname
${SOBRENOME2}   id:lastname
${COMPANHIA}    id:company
${ENDERECO}     id:address1
${CIDADE}       id:city
${ESTADO}       id:id_state
${CEP}          id:postcode
${PAIS}         id:id_country
${CELULAR}      id:phone_mobile
${REFERENCIA}   id:alias
${REGISTRAR}    id:subtmiAccount
   
*** Keywords ***
Acessar a página home do site da loja
    Open Browser    url=${URL}      browser=${BROWSER}
Clicar no botão sign in
    Click Element   class=login
Inserir um email válido no campo email "${EMAIL}"
    Input text  id=email_create     ${EMAIL}
Clicar no botão create an account
    Click Button    id=SubmitCreate
    Wait Until Element is Visible       id=id_gender1

Selecionar o radio do campo sexo
    Click Element       id=id_gender1    
Preencher o campo first name "${NOME}"
    Input Text      id=customer_firstname   ${NOME}
Preencher o campo last name "${SOBRENOME}"
    Input Text     id=customer_lastname    ${SOBRENOME}
Preencher o campo senha "${SENHA}"
    Input Text     id=passwd             ${SENHA}
Escolher o dia de nascimento
    Click Element  id=uniform-days
    Press Keys      id=uniform-days  23
Escolher o mes de nascimento
    Click element   id=months
    Press Keys      id=months       august
Escolher o ano de nascimento
    Click Element   id=years
    Press Keys      id=years        1993
Preencher o campo company "${COMPANHIA}"
    Input Text      id=company      ${COMPANHIA}
Preencher o campo address "${ENDERECO}"
    Input Text      id=address1     ${ENDERECO}
Preencher o campo city "${CIDADE}"
    Input Text      id=city         ${CIDADE}
Selecionar o campo state
    Click Element   id=id_state
    Press Keys      id=id_state     Massachusetts
Preencher o campo zip/ postal code "${CEP}"
    Input Text      id=postcode     ${CEP}
Selecionar o campo country
    Click Element   id=id_country
    Press Keys      id=id_country   United States
Preencher o campo adicional "${OUTRO}"
    Input Text  id=other    ${OUTRO}
Preencher o campo Home Phone "${RESIDENCIAL}"
    Input Text  id=phone    ${RESIDENCIAL}
Preencher o campo mobile Phone "${CELULAR}"
    Input Text      id=phone_mobile     ${CELULAR}
Preencher o campo Assign an address alias for future reference "${REFERENCIA}"
    Input Text      id=alias            ${REFERENCIA}
Clicar no botão registrar
    Click Button   id=submitAccount
Verificar se estou cadastrado
    Wait Until Element is Visible   xpath=//*[@id="center_column"]/p
Inserir "${PESQUISAR}" no campo search
    Input Text      id=search_query_top
    Press Keys      id=search_query_top     Enter
Fechar o navegador
    Close Browser






    
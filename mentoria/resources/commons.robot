*** Settings ***
Library     SeleniumLibrary

*** Variable ***
${BROWSER}                         chrome
${HEADLESS}                        false  
${URL}                             http://automationpractice.com/index.php
${TIME_TO_WAIT}                    5
${BTN_PESQUISAR}                   css=button.btn.btn-default.button-search
${INPUT_EMAIL}                     name=email_create
${INPUT_FIRSTNAME}                 id=customer_firstname  
${INPUT_LASTNAME}                  customer_lastname
${INPUT_PASSWORD}                  css=input#passwd.is_required.validate
${INPUT_NAME_EMPRESA}              css=input#company 
${INPUT_ENDEREÇO_EMPRESA}          css=input#address1
${INPUT_CITY}                      name=city
${INPUT_STATE}                     name=id_state
${INPUT_POSTAL_CODE}               css=input#postcode
${INPUT_INFO_ADICIONAL}            css=textarea#other
${TELEFONE_FIXO}                   css=input#phone
${TELEFONE_MOBILE}                 css=input#phone_mobile
${INPUT_REFERENCIA}                css=input#alias
${BTN_REGISTRAR}                   css=button#submitAccount
${BTN_CREATE_ACCOUNT}              id=SubmitCreate




*** Keywords ***

Dado que preencho email para criar conta "${EMAIL}"
    Wait Until Element is Visible       ${INPUT_EMAIL}       
    Input Text                          ${INPUT_EMAIL}     ${EMAIL}
    Click Element                       ${BTN_CREATE_ACCOUNT}

E Preencho o primeiro nome "${Primeironome}"
    Input Text    ${INPUT_FIRSTNAME}          ${Primeironome}

E Preencho o ultimo nome "${UltimoNome}"
    Input Text      ${INPUT_LASTNAME}        ${UltimoNome}

E Crio uma senha "${Senha}"
    Input Text     ${INPUT_PASSWORD}      ${Senha}

E Preencho nome da empresa "${Nomeempresa}"
    Input Text      ${INPUT_NAME_EMPRESA}        ${Nomeempresa}

E Preencho campo "${City}"
    Input Text        ${INPUT_CITY}       ${City}

E Preencho campo state ${STATE}
    Click Element     ${INPUT_STATE}
    Press Keys        ${INPUT_STATE}          ${STATE}

E Preencho dados do endereço "${endereço}"
    Input Text      ${INPUT_ENDEREÇO_EMPRESA}       ${endereço}

E Preencho Zip/Postal Code "${cep}"
    Input Text      ${INPUT_POSTAL_CODE}    ${cep}

E Preencho informação adicional "${infoadicional}"   
    Input Text      ${INPUT_INFO_ADICIONAL}     ${infoadicional}

E Preencho telefone "${fixo}"
    Input Text      ${TELEFONE_FIXO}    ${fixo}

E Preencho Celular "${mobile}"
    Input Text      ${TELEFONE_MOBILE}     ${mobile}

E Preencho ponto de referencia "${referencia}"
    Input Text      ${INPUT_REFERENCIA}    ${referencia}

Então Clico registrar
    click Element   ${BTN_REGISTRAR}
    
E Preencho dados de nascimento  
    [Arguments]    ${D_T-DIA}    ${D_T-MES}    ${D_T-ANO}
    Click Element       id=uniform-days
    Press Keys          id=uniform-days     ${D_T-DIA}
    Click Element       id=months
    Press Keys          id=months     ${D_T-MES}
    Click Element       id=years
    Press Keys          id=years     ${D_T-ANO}


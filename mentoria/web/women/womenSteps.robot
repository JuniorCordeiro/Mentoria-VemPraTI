*** Settings ***
Resource        womenPage.robot
Resource        womenTests.robot


*** Keywords *** 
Dado que quero acessar a página home do site da loja
    Open Browser    url=${URL}      browser=${BROWSER}

Quando acesso botão Sign in realizar cadastro
    Click Element        ${BTN_SIGNIN}

Quando sou redirecionado pagina de cadastro "${TEXT}" 
    Element Should Contain               ${BTN_CREATE_ACCOUNT}        ${TEXT} 

#como inserir no commons criar os dois F e M
E seleciono opcao title
    Wait Until Element is Visible        ${CMB_TITLE} 
    Click Element                        ${CMB_TITLE}

#inserir na commos realizando cadastro direto
Então aciono botão registrar
    Click Element                        ${BTN_REGISTRAR}

Quando pesquiso "${Produto}"
    Input Text        ${INPUT_Pesquisar}     ${Produto}                   

E aciono botão Pesquisar
    Click Element        ${BTN_PESQUISAR}

Então vou conferir se o ${Produto} pesquisado é exibido corretamente
    Wait Until Element Is Visible        ${INPUT_Produto}

Quando aciono botão SignIn
    Click Element        ${BTN_SIGNIN}

E preencho email para realizar login "${LOGIN_EMAIL}"
    Input Text          ${INPUT_LOGIN_EMAIL}     ${LOGIN_EMAIL}

E preencho senha para realizar login "${PASSWORD}"
    Input Text          ${INPUT_PASSWORD}     ${PASSWORD}

Então aciono botão SignIn realizar login
    Click Element       ${BTN_LOGIN}

Quando acesso aba Women
    Click Element       ${ABA_WOMEN}
    
E quero adicionar um produto no carrinho


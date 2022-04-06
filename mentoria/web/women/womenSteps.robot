*** Settings ***
Resource        womenPage.robot
Resource        womenTests.robot


*** Keywords *** 
Dado que quero acessar a página home do site da loja
    Open Browser    url=${URL}      browser=${BROWSER}

Quando acesso botão Sign in realizar cadastro
    Click Element        ${BTN_SIGNIN}

E digito para criar conta "${EMAIL}"
    Wait Until Element is Visible       ${INPUT_EMAIL}       
    Input Text                          ${INPUT_EMAIL}     ${EMAIL}
    Click Element                       ${BTN_CREATEANACCOUNT}

Quando sou redirecionado pagina de cadastro "${TEXT}" 
    Element Should Contain              ${BTN_CREATEANACCOUNT}        ${TEXT}      

Quando pesquiso "${Produto}"
    Input Text        ${INPUT_Pesquisar}     ${Produto}                   

E aciono botão Pesquisar
    Click Element        ${BTN_PESQUISAR}

Então vou conferir se o ${Produto} pesquisado é exibido corretamente
    Wait Until Element Is Visible        ${CMP_Produto}

Dado que estou logado com a minha conta
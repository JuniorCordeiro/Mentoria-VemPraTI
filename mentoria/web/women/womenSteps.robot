*** Settings ***
Resource        womenPage.robot
Resource        womenTests.robot


*** Keywords *** 
Dado que quero acessar a página home do site da loja
    Open Browser    url=${URL}      browser=${BROWSER}

Quando pesquiso "${Produto}"
    Input Text        ${INPUT_Pesquisar}     ${Produto}                   

E aciono botão Pesquisar
    Click Element        ${BTN_PESQUISAR}

Então vou conferir se o ${Produto} pesquisado é exibido corretamente
    Wait Until Element Is Visible        ${CMP_Produto}  
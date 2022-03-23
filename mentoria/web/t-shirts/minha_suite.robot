*** Settings ***
Documentation       Suíte Exemplo mentoria-vemprati
Resource            ../../resources/commons.robot

*** Test Case ***
Caso de Teste 01: Pesquisar um produto no site
    Acessar a página home do site da loja
    Digitar o produto "blouse" no campo de pesquisa
    Clica no botão Pesquisar
    Conferir se o produto "blouse" foi exibido corretamente
    Fechar o navegador


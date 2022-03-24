*** Settings ***
Documentation       Suíte Exemplo mentoria
Resource            ../../resources/commons.robot
Resource             t-shirts.Steps.robot


*** Test Cases ***
Cenário: Pesquisar um produto 
    Dado que quero acessar a página home do site da loja
    E digito o produto "blouse" no campo de pesquisa
    Quando clico no botão Pesquisar
    Então conferiro se o produto "blouse" foi exibido corretamente

Cenário: Comprar 2 T-shirts
    Clicar na blouse escolhida 
    Colocar no carrinho 
    Clicar em Proceed to checkout
    Clicar na página T-shirts
    Escolha Faded Short Sleeve T-shirts
    Imprima a mensagem na tela



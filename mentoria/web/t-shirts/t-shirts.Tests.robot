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
    Colocar no carrinho blusa 2
    Clicar em Proceed to checkout finalizando compra
    Criar uma conta no site digitando o email "Leticiagraziele@gmail.com"
    Imprima a mensagem na tela
    
Cenário: Fazer o cadastro da loja   
    Selecionar o Title Mrs
    Colocar primeiro nome "Leticia"
    Colocar o ultimo nome "Ferreira"
    Criar uma senha "meuteste"
    Preencher dados de nascimento 
    Preencher dados da empresa "Vem pra TI"
    Preencher dados do endereço " Adelaide avenue"
    Prencher estado Alabama
    Preencher estado
    Prencher Zip/Postal Code "00000"
    informação adicional "Portao Azul"
    Preencher telefone "34-3313-2133"
    Preencher Celular "34-9888-9899"
    Preencher ponto de referencia "Proximo ao Shopping"
    Clicar registrar






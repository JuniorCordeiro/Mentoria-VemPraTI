*** Settings ***
Documentation       Suíte Exemplo mentoria
Resource            ../../resources/commons.robot
Resource             dresses.Steps.robot

*** Test Cases ***
Cenário: Pesquisar um produto
    Dado que quero acessar a página home do site da loja
    E digito o produto "dresses" no campo de pesquisa
    Quando clico no botão Pesquisar
    Então confiro se o produto "dresses" foi exibido corretamente

Cenário: Comprar 1 dresses e colocar no carrinho
    Dado que Clico no dresses escolhida
    E coloco no carrinho
    Então Clico em Proceed to checkout

Cenário: Comprar o segundo dresses
    Dado que quando clico na página dresses
    E escolha Printed Chiffon Dress
    Quando Coloco no carrinho o dresses 2
    Então Clico em Proceed to checkout finalizando compra

Cenário: Fazer o cadastro da loja 
    Dado que preencho email para criar conta "miguel2022@gmail.com" 
    E seleciono o Title Mr 
    E Preencho o primeiro nome "Miguel"
    E Preencho o ultimo nome "Sousa"
    E Crio uma senha "@Portugal2"
    E Preencho dados de nascimento    23    Agosto    1993
    E Preencho nome da empresa "Vem pra TI"
    E Preencho dados do endereço " Adelaide avenue"
    E Preencho City Boston
    E Preencho estado Massachussets
    E Preencho Zip/Postal Code "8723999"
    E Preencho informação adicional "Portao Vermelho"
    E Preencho telefone "61-3357-2148"
    E Preencho Celular "61-99392-9749"
    E Preencho ponto de referencia "Proximo ao Metrô"
    Então Clico registrar










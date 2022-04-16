*** Settings ***
Documentation        Suite Exemplo Mentoria
Resource             ../../resources/commons.robot
Resource             popularSteps.robot


*** Test Cases ***
Cenário1: Fazer o cadastro da loja
    Dado que quero acessar a página home do site da loja
    clico Sign in
    Dado que preencho email aleatório para criar conta
    E seleciono o Title Mr
    E Preencho o primeiro nome "jose"
    E Preencho o ultimo nome "alves"
    E Crio uma senha "meuteste"
    E Preencho dados de nascimento    22    october    1989
    E Preencho nome da empresa "Vem pra TI"
    E Preencho dados do endereço " Adelaide avenue"
    E Preencho City Alabama
    E Preencho estado
    E Preencho Zip/Postal Code "14013"
    E Preencho informação adicional "Em frente a escola"
    E Preencho telefone "82-3313-2133"
    E Preencho Celular "82-9888-9899"
    E Preencho ponto de referencia "Em frente a escola"
    E Clico registrar

Cenario 2: voltar a pagina incial
    Dado que quero acessar a página home do site da loja
    Clico em Home
    
Cenário 3: Pesquisar um produto na aba POPULAR
    Dado que quero acessar a página home do site da loja
    Quando Clico na aba POPULAR
    Escolho um produto
    Escolho a cor Azul
   
Cenario 4: colocar no carrinho e finalizar Comprar
    Dado que quero acessar a página home do site da loja
    Coloco no carrinho
    Então Clico em Proceed to checkout finalizando compra

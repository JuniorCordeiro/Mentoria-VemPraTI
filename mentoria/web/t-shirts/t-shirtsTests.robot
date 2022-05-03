*** Settings ***
Documentation       Suíte Exemplo mentoria
Resource            ../../resources/commons.robot
Resource             t-shirtsSteps.robot

Suite Setup            Dado que quero acessar a página home do site da loja
Test Setup             Dado que estou na aba T-Shirts                        
Test Teardown          Capture Page Screenshot
Suite Teardown         Fecho a pagina

*** Test Cases ***
Cenário: Pesquisar um produto
    E digito o produto "blouse" no campo de pesquisa
    Quando clico no botão Pesquisar
    Então conferiro se o produto "blouse" foi exibido corretamente

Cenário: Comprar 1 T-shirts e colocar no carrinho
    [Setup]            Dado que estou na Home
    Dado que Clico na blouse escolhida
    E coloco no carrinho
    Então Clico em Proceed to checkout 
    #na linha 16 encontrei um bug, onde o primeiro produto nao fica no carrinho

Cenário: Comprar a 2° blusa 
    Dado que quando clico na página T-shirts
    E escolha Faded Short Sleeve T-shirts
    Quando Coloco no carrinho blusa 2
    Então Clico em Proceed to checkout finalizando compra

Cenário: Fazer o cadastro da loja 
    Dado que preencho email aleatório para criar conta 
    E seleciono o Title Mrs 
    E Preencho o primeiro nome "Leticia"
    E Preencho o ultimo nome "Ferreira"
    E Crio uma senha "meuteste"
    E Preencho dados de nascimento    15    March    1991
    E Preencho nome da empresa "Vem pra TI"
    E Preencho dados do endereço " Adelaide avenue"
    E Preencho City Alabama
    E Preencho estado
    E Preencho Zip/Postal Code "00000"
    E Preencho informação adicional "Portao Azul"
    E Preencho telefone "34-3313-2133"
    E Preencho Celular "34-9888-9899"
    E Preencho ponto de referencia "Proximo ao Shopping"
    E Clico registrar
    E clico prosseguir

Cenário: Finalizar com o pagamento do produto
    E preencho os dados de pagamento
    Então finalizo a compra 
    Fecho a pagina














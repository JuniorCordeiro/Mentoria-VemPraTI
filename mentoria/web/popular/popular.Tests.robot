*** Settings ***
Documentation        Suite Exemplo Mentoria
Resource             ../../resources/commons.robot
Resource             popular.Steps.robot
Resource    ../t-shirts/t-shirts.Steps.robot

*** Test Cases ***

Cenário: Pesquisar um produto
    Dado que quero acessar a página home do site da loja
    Quando Clico na aba POPULAR
    E Escolho um produto
    Verifico Se o Produto Apareceu Corretamente

    
  
  
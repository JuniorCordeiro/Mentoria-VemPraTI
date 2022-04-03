*** Settings ***
Documentation        Suite Exemplo Mentoria
Resource             ../../resources/commons.robot
Resource             popular.Steps.robot

*** Test Cases ***

Cenário: Pesquisar um produto
    Dado que quero acessar a página home do site da loja
    Clicar na aba POPULAR
    
  
  
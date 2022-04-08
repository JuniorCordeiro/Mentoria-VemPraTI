*** Settings ***
Documentation        Suite Exemplo Mentoria
Resource             ../../resources/commons.robot
Resource             popular.Steps.robot


*** Test Cases ***

Cenário 1: Pesquisar um produto na aba POPULAR
    Dado que quero acessar a página home do site da loja
    Quando Clico na aba POPULAR
    Então conferiro se o produto foi exibido corretamente
    

    

   
   


   
    


     
  
  
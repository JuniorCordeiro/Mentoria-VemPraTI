*** Settings ***

Resource        popular.Page.robot
Resource        popular.Tests.robot
Library    XML

*** Keywords ***

Dado que quero acessar a página home do site da loja
    Open Browser        url=${URL}        browser=${BROWSER}      
  
Quando Clico na aba POPULAR
    Click Element         css=ul#homefeatured

Escolho um produto
    Click Element    xpath=//*[@id="homefeatured"]/li[1]/div/div[1]/div/div[1]/a/i

Então conferiro se o produto foi exibido corretamente
    Wait Until Element Is Visible   xpath=//*[@id="homefeatured"]/li[1]/div/div[1]/div/div[1]/a/i
     




    




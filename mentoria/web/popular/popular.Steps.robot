*** Settings ***

Resource        popular.Page.robot
Resource        popular.Tests.robot

*** Keywords ***
Dado que quero acessar a página home do site da loja
    Open Browser        url=${URL}        browser=${BROWSER}

Quando Clico na aba POPULAR
    Click Element         css=ul#homefeatured

E Escolho um produto
    Click Element    xpath=//*[@id="homefeatured"]/li[1]/div/div[1]/div/a[1]/img
    
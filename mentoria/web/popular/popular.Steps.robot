*** Settings ***

Resource        popular.Page.robot
Resource        popular.Tests.robot

*** Keywords ***
Dado que quero acessar a página home do site da loja
    Open Browser        url=${URL}        browser=${BROWSER}

Clicar na aba POPULAR
l    Click Button       css=ul#homefeatured




*** Settings ***

Resource        popular.Page.robot
Resource        popular.Tests.robot
Library    XML

*** Keywords ***


Dado que quero acessar a página home do site da loja
    Open Browser        url=${URL}        browser=${BROWSER}  

clico Sign in
    Click Element    css=a.login  

E seleciono o Title Mr 
    wait Until Element is Visible       css=div#uniform-id_gender1
    click element   css=div#uniform-id_gender1

E Preencho City Alabama
    Click Element       css=input#city   
    Press Keys          css=input#city         Alabama

E Preencho estado
    Click Element       css=div#uniform-id_state
    Press Keys          css=div#uniform-id_state     Alabama  
  
Quando Clico na aba POPULAR
    Click Element         css=ul#homefeatured

Escolho um produto
    Click Element    xpath=//*[@id="homefeatured"]/li[1]/div/div[2]/h5/a

Escolho a cor Azul
    Wait Until Element Is Visible   css=a#color_14.color_pick
    Click Element          css=a#color_14.color_pick   

Coloco no carrinho
    




    




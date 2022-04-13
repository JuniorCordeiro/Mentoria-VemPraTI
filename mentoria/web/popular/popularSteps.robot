*** Settings ***

Resource        popularPage.robot
Resource        popularTests.robot    
Library    XML

*** Keywords ***


Dado que quero acessar a página home do site da lojas
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

Clico em Home
    Wait Until Element Is Visible    xpath=//*[@id="center_column"]/ul/li/a
    Click Element    xpath=//*[@id="center_column"]/ul/li/a   
  
Quando Clico na aba POPULAR
    Click Element         css=ul#homefeatured

Escolho um produto
    Click Element    xpath=//*[@id="homefeatured"]/li[1]/div/div[2]/h5/a

Escolho a cor Azul
    Wait Until Element Is Visible   css=a#color_14.color_pick
    Click Element          css=a#color_14.color_pick   

Coloco no carrinho
    Click Element    xpath=//*[@id="add_to_cart"]/button

Então Clico em Proceed to checkout finalizando compra
    Wait Until Element is Visible       css=a.btn.btn-default.button-medium
    click Element       css=a.btn.btn-default.button-medium




    




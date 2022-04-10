*** Settings ***
Documentation       Documentação    dresses-robot
Resource            dresses.robot

*** Test Cases ***

Caso de Teste 01: Selecionar um vestido para compra
    Acessar a página home do site da loja
    Clicar no botão sign in
    Preencher o campo email "miguelspfc1993@hotmail.com"
    Preencher o campo senha "@Portugal2"
    Clicar no botão sign in
    #Inserir "dresses" no campo search
    #Colocar o mouse sobre o botão "dresses" e clicar
    #Selecionar o vestido escolhido
    #Clicar no botão "add_to_cart"
    #Clicar em Proceed to checkout
    #Clicar em Proceed to checkout de novo.



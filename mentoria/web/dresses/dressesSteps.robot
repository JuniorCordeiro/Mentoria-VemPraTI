*** Settings ***
Resource        dressesPage.robot
Resource    ../../resources/commons.robot

Library    SeleniumLibrary

*** Keywords ***


Dado que escreveu o cenario
    Click Element        //button-especifico

Quando terminar


Então deve sair o erro ao chamar no Resource a referencia do Steps
    validar o texto do elemnto


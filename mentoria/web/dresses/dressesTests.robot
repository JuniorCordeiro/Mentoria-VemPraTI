*** Settings ***
Resource            dressesSteps.robot
Resource            ../../resources/commons.robot


Suite Setup    Acessar a página home do site da loja
Test Setup     


*** Test Cases ***
Cena´rio: Escrever os cenarios com Gherkin
    Dado que escreveu o cenario
    Clicar na aba "Dresses"
    Quando terminar
    Então deve sair o erro ao chamar no Resource a referencia do Steps



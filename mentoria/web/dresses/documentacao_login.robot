*** Settings ***
Documentation       Documentação login-robot
Resource            login.robot

*** Test Cases ***
Caso de Teste 01: Criar um login
    Acessar a página home do site da loja
    Clicar no botão sign in 
    Inserir um email válido no campo email "miguel28282809@hotmail.com"
    Clicar no botão create an account
    Selecionar o radio do campo sexo
    Preencher o campo first name "Miguel"
    Preencher o campo last name "da Silva Sousa"   
    Preencher o campo senha "@Portugal2"
    Escolher o dia de nascimento
    Escolher o mes de nascimento
    Escolher o ano de nascimento
    #Preencher o campo de firts name do endereço
    #Preencher o campo de last name do endereço
    Preencher o campo company "Araújo Abreu"
    Preencher o campo address "Samambaia Norte"
    Preencher o campo city "Boston"
    Selecionar o campo state
    Preencher o campo zip/ postal code "00000"
    Selecionar o campo country
    Preencher o campo adicional "facebook.com/Miguel"
    Preencher o campo Home Phone "6133572148"
    Preencher o campo mobile Phone "61993929749"
    Preencher o campo Assign an address alias for future reference "Supermercado Superbom"
    Clicar no botão registrar
    Verificar se estou cadastrado
    Fechar o navegador


*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}      chrome
${URL}          http://automationpractice.com/index.php
   
*** Keywords ***
Acessar a página home do site da loja
    Open Browser    url=${URL}      browser=${BROWSER}
Clicar no botão sign in
    Click Element   class=login
Preencher o campo email "${EMAIL_LOGIN}"
    Input Text  id=authentication   ${EMAIL_LOGIN}
Preencher o campo senha "${SENHA_LOGIN}"
    Input Text  id=passwd   ${SENHA_LOGIN}
Clicar no botão sign in
    Click Element   id=SubmitLogin



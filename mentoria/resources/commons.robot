*** Settings ***
Library     SeleniumLibrary

*** Variable ***
${BROWSER}      chrome
${HEADLESS}      false  
${URL}          http://automationpractice.com/index.php
${TIME_TO_WAIT}     5
${BTN_PESQUISAR}  css=button.btn.btn-default.button-search
${INPUTFIRSTNAME}      id=customer_firstname     
 
*** Keywords ***

E Coloco o primeiro nome "${Primeironome}"
    Input Text    ${INPUTFIRSTNAME}          ${Primeironome}









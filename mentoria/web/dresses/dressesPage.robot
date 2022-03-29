*** Settings ***
Resource        dressesElements.robot
Library         SeleniumLibrary

*** Keywords ***
Validar o texto do elemnto
    Click Element    //elemento
    Input Text    //elemento    qualquer
    ${texto}    Get Text    //outro elemento
    Should Be Equal    ${texto}    ${XPATH_MUITO_USADO}







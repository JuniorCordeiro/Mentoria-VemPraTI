*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Resource    t-shirtsElements.robot

*** Keywords ***
seleciono campo CIDADE/UF
    [Arguments]         ${texto}        ${elemento}
    Click Element       ${elemento}
    Press Keys          ${elemento}     ${texto}
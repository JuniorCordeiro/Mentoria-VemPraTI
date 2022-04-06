*** Settings ***
Documentation       Suíte Exemplo mentoria
Resource            ../../resources/commons.robot
Resource             womenSteps.robot

*** Test Cases ***
Cenario: Realizar cadastro na loja
    Dado que quero acessar a página home do site da loja
    Quando acesso botão Sign in realizar cadastro
    E digito para criar conta "edivania1@testes.com.br" 
    Quando sou redirecionado pagina de cadastro "Create an account" 
    E Preencho o primeiro nome "Testes caçula"
    E Preencho o ultimo nome "Caçulinha"
    E Crio uma senha "12345"
    E Preencho nome da empresa "Vem pra TI"
    E Preencho dados do endereço "Rua nata, 222"
    E Preencho Zip/Postal Code "33333333"
    E Preencho informação adicional "meu primeiro testes de automação"   
    E Preencho telefone "3133333333"
    E Preencho Celular "31999999999"
    E Preencho ponto de referencia "Proxima ao ponto de testes"
    Então Clico registrar
  




# Cenario: Pesquisar produtos (não logado)
#     Dado que quero acessar a página home do site da loja
#     Quando pesquiso "Blouse"
#     E aciono botão Pesquisar
#     Então vou conferir se o produto "Blouse" pesquisado é exibido corretamente

# Cenario: Logar no site da loja
#     Dado que quero acessar a página home do site da loja
#     Quando aciono botão "Sign in"   


# Cenario: Adicionar produto no carrinho
#     Dado que estou logado com a minha conta
#     Quando acesso aba "Women"
#     E quero adicionar um produto no carrinho

# Cenario: Pesquisar produtos (logado)
#     Dado que estou logado com a minha conta
#     Quando acesso aba "Women"
#     E pesquiso produto "Blouse"
#     Então vou conferir se o produto pesquisado é exibido corretamente




# Cenario: Comprar produto no carrinho



#Criar conta com e-mail - comum
#Buscar produto - comum
#Adicionar ao carrinho - comum
#loga no site da loja  - comum
#Efetuar o pagamento
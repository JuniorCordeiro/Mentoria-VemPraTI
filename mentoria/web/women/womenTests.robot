*** Settings ***
Documentation       Suíte Exemplo mentoria
Resource            ../../resources/commons.robot
Resource             womenSteps.robot

*** Test Cases ***
Cenario: Pesquisar produto
    Dado que quero acessar a página home do site da loja
    Quando pesquiso "Blouse"
    E aciono botão Pesquisar
    Então vou conferir se o produto "Blouse" pesquisado é exibido corretamente

# Cenario: Adicionar produto no carrinho
#     Dado que quero acessar a página home do site da loja
#     Quando pesquiso "Blouse"
#     # E adiciono produto no carrinho
#     # E aciono botão Proceed to checkout
#     # E aciono botão Proceed to checkout para realizar cadastro

# Cenario: Realizar cadastro no site da loja
#     Dado que preencho email aleatório para criar conta
#     Quando sou redirecionado pagina de cadastro "Create an account"
#     E seleciono opcao title
#     E Preencho o primeiro nome "Testes Trem bala"
#     E Preencho o ultimo nome "TI"
#     E Crio uma senha "12345"
#     E Preencho nome da empresa "Vem pra TI"
#     E Preencho dados do endereço "Rua nata, 222"
#     E Preencho campo "Nevada teste"
#     E Preencho campo state Arizona
#     E Preencho Zip/Postal Code "12345"
#     E Preencho informação adicional "meu primeiro testes de automação"   
#     E Preencho telefone "3133333333"
#     E Preencho Celular "31999999999"
#     E Preencho ponto de referencia "Proxima ao ponto de testes"
#     Então aciono botão registrar

# # Cenario: Efetuar login no site da loja
# #     Dado que quero acessar a página home do site da loja
# #     Quando aciono botão SignIn
# #     E preencho email para realizar login "edivania2@testes.com.br" 
# #     E preencho senha para realizar login "12345"
# #     Então aciono botão SignIn realizar login

# Cenario: Realizar compra produto com desconto
#     Dado que quero acessar a página home do site da loja
#     Quando aciono botão SignIn
#     E preencho email para realizar login "edivania2@testes.com.br" 
#     E preencho senha para realizar login "12345"
#     Então aciono botão SignIn realizar login
#     Quando acesso aba Women
#     # E quero adicionar um produto com desconto no carrinho
#     # Então verifico se o produto foi adcionado corretamente

# Cenario: Efetuar compra de um produto qualquer - Logado
#     Cenario: Efetuar login no site da loja
#     Quando seleciono um produto ""
#     E adiciono no carrinho
#     E 


# Cenario: Comprar produto que já esteja no carrinho

# Cenario: Adicionar mais de dois produtos no carrinho

# Cenario Comprar produto que tenha desconto

# Cenario: Adicionar produto que já tenho no carrinho 


# Cenario: Deletar produto que esteja no carrinho






#Duvidas: Abrindo varios navegadores


#Criar conta com e-mail - comum
#Buscar produto - comum
#Adicionar ao carrinho - comum
#loga no site da loja  - comum
#Efetuar o pagamento
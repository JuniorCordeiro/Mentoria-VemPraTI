*** Settings ***
Documentation       Suíte Exemplo mentoria
Resource            ../../resources/commons.robot
Resource             womenSteps.robot

*** Test Cases ***
Cenario: Pesquisar produtos (não logado)
    Dado que quero acessar a página home do site da loja
    Quando pesquiso "Blouse"
    E aciono botão Pesquisar
    Então vou conferir se o produto "Blouse" pesquisado é exibido corretamente

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



#Criar conta com e-mail
#Buscar produto
#Adicionar ao carrinho
#Endereço de entrega
#Efetuar o pagamento
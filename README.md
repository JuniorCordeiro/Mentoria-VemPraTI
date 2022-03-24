# Mentoria-VemPraTI
# Repositório com o projeto final da 1ª Turma da Mentoria VEMPRATI - Automação RobotFramework

#### Estrutura para as funcionalidades com arquivos separados para Tests / Steps / Page / Elements. ####
# Tests:
    Contém cenários em formato Gherkin para servir como documentação aos P.O´s e demais StackHolders.
# Steps: 
    Recebe os cenários Gherkin e divide em passos para que ordenem a ação para os métodos serem acionados.
# Page: 
    É acionada através dos Steps para determinada ação seja executada como "Clicar no botão = Click Button" são as chamadas "Keywords" do RobotFramework.
# Elements:
    São os elementos mapeados e/ou a massa para cada testes efetuado através dos cenários. Isso facilita a manutenção separando para um local somente servir como repositório.
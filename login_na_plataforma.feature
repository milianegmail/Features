#language: pt

  @regressao
  @login
  Funcionalidade: Login
  
  Como cliente da EBAC-SHOP
  Quero fazer o login (autenticação) na plataforma  
  Para visualizar meus pedidos


  Contexto:
	Dado que estou na página Minha Conta para efetuar o login


    @checkout
    Esquema do Cenário: Validar acesso ao checkout
      Quando digitar o <email>
      E a <senha>
      Então devo ser redirecionado para a página do "checkout" 

    Exemplos:
      | email              | senha    | 
      | "joao@ebac.com.br" | "123abc" |


    @dados_invalidos
    Esquema do Cenário: Validar impedimento
      Quando digitar o <email>
      E a <senha>
      Entao deve ser exibido a mensagem "Usuário ou senha inválidos"

    Exemplos:
      | email              | senha    | 
      | "joao@ebac.com"    | "123abc" |
      | "joao@ebac.com.br" | "12ab"   |
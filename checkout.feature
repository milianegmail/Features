#language: pt

  @regressao
  @checkout
  Funcionalidade: cadastro
  
  Como cliente da EBAC-SHOP
  Quero fazer concluir meu cadastro   
  Para finalizar minha compra


  Contexto:
	Dado que estou na página checkout

    @cadastro_correto
    Esquema do Cenário: Validar cadastro correto
      Quando preencho o campo <nome> e <sobrenome> e <pais> e <endereco> e <cidade> e <cep> e <telefone> e <email>
      E clico no botão "finalizar"
      Então devo ser redirecionado para a página de "resumo" de entrega 

    Exemplos:
      | nome   | sobrenome | pais     | endereco |  cidade  | cep         |  telefone        |  email             |
      | "joao" | "Silva"   | "Brasil" | "Rua Um" | "Osasco" | "05284-150" | "(11)98888-8888" | "joao@ebac.com.br" |


    @email
    Esquema do Cenário: Validar mensagem de email incorreto
      Quando eu preencher os campos obrigatórios <nome> e <sobrenome> e <pais> e <endereco> e <cidade> e <cep> e <telefone>
      E o campo <email> de forma errada
      Entao deve ser exibido a mensagem "Email incorreto" 

    Exemplos:
      | nome   | sobrenome | pais     | endereco |  cidade  | cep         |  telefone        |  email            |
      | "joao" | "Silva"   | "Brasil" | "Rua Um" | "Osasco" | "05284-150" | "(11)98888-8888" | "joaoebac.com.br" |
      | "joao" | "Silva"   | "Brasil" | "Rua Um" | "Osasco" | "05284-150" | "(11)98888-8888" | "joao@ebac.br"    |
      | "joao" | "Silva"   | "Brasil" | "Rua Um" | "Osasco" | "05284-150" | "(11)98888-8888" | "joao@ebac.com"   |
      

    @campo_vazio
    Esquema do Cenário: Validar mensagem de erro
      Quando preencho o campo <nome> e <sobrenome> e <pais> e <endereco> e <cidade> e <cep> e <telefone> 
      E clico no botão "finalizar"
      Entao deve ser exibido a mensagem "preencher campo vazio" 

    Exemplos:
      | nome    | sobrenome | pais     | endereco |  cidade  | cep         |  telefone        | 
      | " "     | "Silva"   | "Brasil" | "Rua Um" | "Osasco" | "05284-150" | "(11)98888-8888" |
      | "joao"  | " "       | "Brasil" | "Rua Um" | "Osasco" | "05284-150" | "(11)98888-8888" |
      | "joao"  | "Silva"   | " "      | " "      | "Osasco" | "05284-150" | "(11)98888-8888" |
      | "joao"  | "Silva"   | "Brasil" | "Osasco" | " "      | "05284-150" | "(11)98888-8888" |
      | "joao"  | "Silva"   | "Brasil" | "Rua Um" | "Osasco" | " "         | "(11)98888-8888" |
      | "joao"  | "Silva"   | "Brasil" | "Rua Um" | "Osasco" | "05284-150" | " "              |
      

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
      Quando preencho o campo <1> e <2> e <3> e <4> e <5> e <6> e <7> e <8>
      E clico no botão "finalizar"
      Então devo ser redirecionado para a página de "resumo" de entrega 

    Exemplos:
      | 1      | 2       | 3        | 4        |  5       | 6           |  7               |  8                 |
      | "joao" | "Silva" | "Brasil" | "Rua Um" | "Osasco" | "05284-150" | "(11)98888-8888" | "joao@ebac.com.br" |


    @email
    Esquema do Cenário: Validar mensagem de email incorreto
      Quando preencho o campo <1> e <2> e <3> e <4> e <5> e <6> e <7> e <8>
      E clico no botão "finalizar"
      Entao deve ser exibido a mensagem "Email incorreto" 

    Exemplos:
      | 1      | 2       | 3        | 4        |  5       | 6           |  7               |  8                 |
      | "joao" | "Silva" | "Brasil" | "Rua Um" | "Osasco" | "05284-150" | "(11)98888-8888" | "joaoebac.com.br" |
      | "joao" | "Silva" | "Brasil" | "Rua Um" | "Osasco" | "05284-150" | "(11)98888-8888" | "joao@ebac.br" |
      | "joao" | "Silva" | "Brasil" | "Rua Um" | "Osasco" | "05284-150" | "(11)98888-8888" | "joao@ebac.com" |
      

    @campo_vazio
    Esquema do Cenário: Validar mensagem de erro
      Quando preencho o campo <1> e <2> e <3> e <4> e <5> e <6> e <7> 
      E clico no botão "finalizar"
      Entao deve ser exibido a mensagem "preencher campo vazio" 

    Exemplos:
      | 1       | 2        | 3        | 4        |  5          | 6                |  7                 | 
      | "Silva" | "Brasil" | "Rua Um" | "Osasco" | "05284-150" | "(11)98888-8888" | "joao@ebac.com.br" |
      | "joao"  | "Brasil" | "Rua Um" | "Osasco" | "05284-150" | "(11)98888-8888" | "joao@ebac.com.br" |
      | "joao"  | "Silva"  | "Rua Um" | "Osasco" | "05284-150" | "(11)98888-8888" | "joao@ebac.com.br" |
      | "joao"  | "Silva"  | "Brasil" | "Osasco" | "05284-150" | "(11)98888-8888" | "joao@ebac.com.br" |
      | "joao"  | "Silva"  | "Brasil" | "Rua Um" | "05284-150" | "(11)98888-8888" | "joao@ebac.com.br" |
      | "joao"  | "Silva"  | "Brasil" | "Rua Um" | "Osasco"    | "(11)98888-8888" | "joao@ebac.com.br" |
      | "joao"  | "Silva"  | "Brasil" | "Rua Um" | "Osasco"    | "05284-150"      | "joao@ebac.com.br" |
      | "joao"  | "Silva"  | "Brasil" | "Rua Um" | "Osasco"    | "05284-150"      | "(11)98888-8888"   | 
      

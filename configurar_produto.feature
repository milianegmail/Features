#language: pt

  @regressao
  @configurar_produto
  Funcionalidade: Seleções
  
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  Escolher a quantidade
  Para depois inserir no carrinho

  Contexto:
	Dado que estou na página do produto


    @carrinho
    Esquema do Cenário: Validar acesso ao carrinho
      Quando selecionei o tamanho "XS" e cor "Orange" e quantidade "sobrenome"
      E clicar no botão "comprar"
      Então devo ser redirecionado para a página do "carrinho" 


    @selecao_obrigatoria
    Esquema do Cenário: Validar impedimento de avanço na compra
      Quando deixei de selecionar um dos campos obrigatórios <tamanho> e <cor> e <quantidade>
      E clicar no botão "comprar"
      Então deve ser exibido a <mensagem> 
        
    Exemplos:
      | tamanho  | cor      | quantidade | mensagem                |
      | "XS"     | "Orange" |    " "     | "Selecionar quantidade" |
      | " "      | "Orange" |    "1"     | "Selecionar tamanho"    |
      | "XS"     | " "      |    "1"     | "Selecionar cor"        |


    @quantidade_permitida
    Esquema do Cenário: Validar quantidade de produtos 
      Quando selecionei o tamanho "XS" e cor "Orange" e quantidade "11"
      E clicar no botão "comprar"
      Entao deve ser exibido a mensagem "Quantidade máxima permitidade de 10 produtos"
    
    
    @link_limpar
    Esquema do Cenário: Validar limpeza de seleções 
      Quando selecionei o tamanho "XS" e cor "Orange" e quantidade "sobrenome"
      E clicar no link "limpar"
      Entao devo ver a página sem "seleções" escolhidas

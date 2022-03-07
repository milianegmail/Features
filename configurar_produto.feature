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
      E selecionei o tamanho "XS" e cor "Orange" e quantidade "2"
      Quando clicar no botão "comprar"
      Então devo ser redirecionado para a página do "carrinho" 


    @selecao_obrigatoria
    Esquema do Cenário: Validar impedimento de avanço na compra
      E selecionei <categoria 1> e <categoria 2>
      Quando clicar no botão "comprar"
      Então deve ser exibido a <mensagem> 
        
    Exemplos:
      | categoria 1 | categoria 2 | mensagem               |
      | "XS"        | "Orange"    |"Selecionar quantidade" |
      | "Orange"    |    "2"      |"Selecionar tamanho"    |
      | "XS"        |    "2"      |"Selecionar cor"        |


    @quantidade_permitida
    Esquema do Cenário: Validar quantidade de produtos 
      E selecionei o tamanho "XS" e cor "Orange" e quantidade "11"
      Quando clicar no botão "comprar"
      Entao deve ser exibido a mensagem "Quantidade máxima permitidade de 10 produtos"
    
    
    @link_limpar
    Esquema do Cenário: Validar limpeza de seleções 
      E selecionei o tamanho "XS" e cor "Orange" e quantidade "2"
      Quando clicar no link "limpar"
      Entao devo ver a página sem "seleções" escolhidas
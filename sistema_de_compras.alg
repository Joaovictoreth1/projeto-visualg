Algoritmo "Sistema_de_Compras"
// Descricao   : Sistema de compras corrigido (sem comandos que travam o VisuAlg)
// Autor(a)    : Joao Victor
// Data atual  : 26/08/2026
Var
   saldo_atual, valor_compra, valor_deposito: real
   opcao: inteiro

Inicio
   escreval("=== SISTEMA DE COMPRAS ===")
   escreva("Digite seu saldo inicial: ")
   leia(saldo_atual)

   opcao <- 0

   // Repete o menu enquanto o usuário não digitar 3
   enquanto (opcao <> 3) faca
      escreval(" ")
      escreval("--- LOJA DO JOAO VICTOR ---")
      escreval("Saldo Disponivel: ", saldo_atual)
      escreval("1 - Realizar uma compra")
      escreval("2 - Depositar dinheiro")
      escreval("3 - Sair")
      escreva("Escolha uma opcao: ")
      leia(opcao)

      escolha opcao
         caso 1
            escreva("Digite o valor da compra: ")
            leia(valor_compra)

            // Estrutura condicional para verificar o saldo
            se (valor_compra <= saldo_atual) entao
               saldo_atual <- saldo_atual - valor_compra
               escreval(">>> Compra APROVADA com sucesso!")
               escreval(">>> Seu novo saldo e: ", saldo_atual)
            senao
               escreval(">>> Compra NEGADA! Saldo insuficiente.")
            fimse

         caso 2
            escreva("Qual valor deseja depositar? ")
            leia(valor_deposito)
            saldo_atual <- saldo_atual + valor_deposito
            escreval(">>> Deposito realizado! Novo saldo: ", saldo_atual)

         caso 3
            escreval("Encerrando o sistema... Volte sempre!")

         outrocaso
            escreval("Opcao invalida! Digite 1, 2 ou 3.")
      fimescolha
      
   fimenquanto

Fimalgoritmo

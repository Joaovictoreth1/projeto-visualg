Algoritmo "Sistema_de_Compras"
// Descricao   : Sistema de compras corrigido (sem comandos que travam o VisuAlg)
// Autor(a)    : Joao Victor
// Data atual  : 26/08/2026
Var
   saldo_atual, valor_compra, valor_deposito: real
   opcao: inteiro

Inicio
   escreval("=== SISTEMA DE COMPRAS ===")
   repita
      escreva("Digite seu saldo inicial: ")
      leia(saldo_atual)
      se (saldo_atual < 0) entao
         escreval("O saldo inicial nao pode ser negativo.")
      fimse
   ate (saldo_atual >= 0)

   opcao <- 0

   // Repete o menu enquanto o usuario nao digitar 3
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

            se (valor_compra <= 0) entao
               escreval("Informe um valor de compra positivo.")
            senao
               se (valor_compra <= saldo_atual) entao
                  saldo_atual <- saldo_atual - valor_compra
                  escreval(">>> Compra APROVADA com sucesso!")
                  escreval(">>> Seu novo saldo e: ", saldo_atual)
               senao
                  escreval(">>> Compra NEGADA! Saldo insuficiente.")
               fimse
            fimse

         caso 2
            escreva("Qual valor deseja depositar? ")
            leia(valor_deposito)
            se (valor_deposito > 0) entao
               saldo_atual <- saldo_atual + valor_deposito
               escreval(">>> Deposito realizado! Novo saldo: ", saldo_atual)
            senao
               escreval("Informe um valor de deposito positivo.")
            fimse

         caso 3
            escreval("Encerrando o sistema... Volte sempre!")

         outrocaso
            escreval("Opcao invalida! Digite 1, 2 ou 3.")
      fimescolha
      
   fimenquanto

Fimalgoritmo

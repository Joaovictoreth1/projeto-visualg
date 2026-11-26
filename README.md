# Sistema de compras em VisuAlg

`sistema_de_compras.alg` simula compras e depósitos em uma sessão, sem persistência ou movimentação de dinheiro real. O programa recusa saldo inicial negativo e operações de valor zero ou negativo.

No VisuAlg 3 para Windows, abra o arquivo `.alg`, pressione **F9** e informe o saldo inicial. Escolha `1` para comprar, `2` para depositar e `3` para sair.

| Entradas em ordem (uma por solicitação) | Resultado esperado |
|---|---|
| `100`, `1`, `40`, `2`, `10`, `3` | Compra aprovada (saldo 60), depósito aceito (saldo 70) e encerramento. |
| `-10`, `20`, `1`, `-5`, `2`, `0`, `3` | O saldo negativo é recusado; compra e depósito inválidos mantêm o saldo em 20. |
| `20`, `1`, `21`, `1`, `20`, `3` | Compra acima do saldo recusada; compra de 20 aprovada, zerando o saldo. |

Estes exemplos são casos de verificação manual.

programa {
  inclua biblioteca Util --> u
  inteiro opcao
  inteiro aux 
  

  funcao inicio() {
    menu()
  }

  funcao menu(){
    enquanto (opcao != 0){
      escreva("\n1 - Jogar\n0 - Sair\n")
      leia(opcao)
      escolha(opcao){
        caso 1:


      }
    }
  }

  funcao sorteiocartas(){
    cadeia cartas[40]={"1 de Ouro","2 de Ouro","3 de Ouro","4 de Ouro","5 de Ouro","6 de Ouro","7 de Ouro","11 de Ouro","12 de Ouro","13 de Ouro","1 de Espada","2 de Espada","3 de Espada","4 de Espada","5 de Espada","6 de Espada","7 de Espada","11 de Espada","12 de Espada","13 de Espada","1 de Paus","2 de Paus","3 de Paus","4 de Paus","5 de Paus","6 de Paus","7 de Paus","11 de Paus","12 de Paus","13 de Paus","1 de Copa","2 de Copa","3 de Copa","4 de Copa","5 de Copa","6 de Copa","7 de Copa","11 de Copa","12 de Copa","13 de Copa"}
  
    cadeia cartasp1[3]
    inteiro cartasUTI[6]

    para (inteiro i = 0; i < 3; i++){
      inteiro aux = u.sorteia(0,39)
      escreva (aux)
        para (inteiro j = 0; i < 6; i++){
          se (aux != cartasUTI[j]){
            cartasp1[i] = cartas[aux]
            cartasF[j] = aux
          }
        }
    }

  }
}
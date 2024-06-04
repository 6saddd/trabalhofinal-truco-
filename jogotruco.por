programa {
  inclua biblioteca Util --> u
  cadeia cartas[40]={"1 de Ouro","2 de Ouro","3 de Ouro","4 de Ouro","5 de Ouro","6 de Ouro","7 de Ouro","11 de Ouro","12 de Ouro","13 de Ouro","1 de Espada","2 de Espada","3 de Espada","4 de Espada","5 de Espada","6 de Espada","7 de Espada","11 de Espada","12 de Espada","13 de Espada","1 de Paus","2 de Paus","3 de Paus","4 de Paus","5 de Paus","6 de Paus","7 de Paus","11 de Paus","12 de Paus","13 de Paus","1 de Copa","2 de Copa","3 de Copa","4 de Copa","5 de Copa","6 de Copa","7 de Copa","11 de Copa","12 de Copa","13 de Copa"}
  inteiro valorcartas[40] = {35,36,37,28,29,30,37,32,33,34,39,36,37,28,29,30,31,32,33,34,39,36,37,28,29,30,31,32,33,34,35,36,37,28,29,30,31,32,33,34}
  cadeia cartap1[3]
  cadeia cartap2[3]
  inteiro opcao = -1
  inteiro aux 
  inteiro pontuacao1 = 0, pontuacao2 = 0, pontosrodada[1] = {0,0}

  funcao inicio() {
    menu()
  }

  funcao menu(){
    enquanto (opcao != 0){
      escreva("\n1 - Jogar\n0 - Sair\n")
      leia(opcao)
      escolha(opcao){
        caso 1:
          mao_cartas()
          pare
        caso 0:
          escreva("Saindo do jogo.\n")
          pare
      }
    }
  }

  funcao mao_cartas(){
    inteiro aux = 0
    para(inteiro i = 0; i < 3; i ++){
      aux = u.sorteia(0,39)
      cartap1[i] = cartas[aux]
      se(cartas[aux] == ""){
        aux = u.sorteia(0,39)
        cartap1[i] = cartas[aux]
      }
      cartas[aux] = ""
    }
    para(inteiro i = 0; i < 3; i++){
      aux = u.sorteia(0,39)
      cartap2[i] = cartas[aux]
      se(cartas[aux] == ""){
        aux = u.sorteia(0,39)
        cartap2[i] = cartas[aux]
      }
      cartas[aux] = ""
    }
    escreva(cartap1,"\n")
    escreva(cartap2, "\n")
  }

    funcao telapontuacao(){
    para(inteiro i = 1; i < 3; i++){
      escreva("Jogador: ",i, "\n")
      escreva("Pontuação Atual: ", pontosrodada[i], "\n")
    }
  }
}



programa {
  inclua biblioteca Util --> u
  cadeia cartas[40]={"1 de Ouro","2 de Ouro","3 de Ouro","4 de Ouro","5 de Ouro","6 de Ouro","7 de Ouro","11 de Ouro","12 de Ouro","13 de Ouro","1 de Espada","2 de Espada","3 de Espada","4 de Espada","5 de Espada","6 de Espada","7 de Espada","11 de Espada","12 de Espada","13 de Espada","1 de Paus","2 de Paus","3 de Paus","4 de Paus","5 de Paus","6 de Paus","7 de Paus","11 de Paus","12 de Paus","13 de Paus","1 de Copa","2 de Copa","3 de Copa","4 de Copa","5 de Copa","6 de Copa","7 de Copa","11 de Copa","12 de Copa","13 de Copa"}
  inteiro valorcartas[40] = {35,36,37,28,29,30,37,32,33,34,39,36,37,28,29,30,31,32,33,34,39,36,37,28,29,30,31,32,33,34,35,36,37,28,29,30,31,32,33,34}
  inteiro pontoscarta1 [3]
  inteiro pontoscarta2 [3]
  inteiro opcao = -1
  inteiro aux = 0 
  inteiro pontomao1 = 0, pontomao2 = 0, pontorodada1 = 0, pontorodada2 = 0
  inteiro numRodada
  inteiro numMao
  cadeia cartap1[3]
  cadeia cartap2[3]
  cadeia cartanamesa1
  cadeia cartanamesa2
  logico aux2

  funcao inicio() {
    menu()
  }

  funcao menu(){
    enquanto (opcao != 0){
      escreva("\n1 - Jogar\n0 - Sair\n")
      leia(opcao)
      escolha(opcao){
        caso 1:
          jogo()
          pare
        caso 0:
          escreva("Saindo do jogo.\n")
          pare
      }
    }
  }

  funcao jogo(){
    para (numMao = 0; numMao < 12; numMao++){
      mao_cartas()
      para (numRodada = 0; numRodada < 3; numRodada++){
        cartanamesa1 = ""
        limpa()
        escreva("Rodada - Player ", 1, ": ", pontorodada1,"\n")
        escreva("Rodada - Player ", 2, ": ", pontorodada2,"\n")
        escreva("Mão - Player ", 1, ": ", pontomao1,"\n")
        escreva("Mão - Player ", 2, ": ", pontomao2,"\n")
        aux2 = falso
        enquanto(aux2 == falso){
          cartasPlayerUm()
          cartasjogadap1()
        }
        cartanamesa2 = ""
        escreva("Rodada - Player ", 1, ": ", pontorodada1,"\n")
        escreva("Rodada - Player ", 2, ": ", pontorodada2,"\n")
        escreva("Mão - Player ", 1, ": ", pontomao1,"\n")
        escreva("Mão - Player ", 2, ": ", pontomao2,"\n")
        aux2 = falso
        faca{
          cartasPlayerDois()
          cartasjogadap2()
        }enquanto(aux2 == falso)
          winnerrodada()
      }
      mostrarwinnermao()
    }
  }

  funcao cartasjogadap1(){
    escreva("escolha sua carta \n")
    leia(cartanamesa1)
    aux2 = falso

    para(inteiro i = 0; i < 3; i++){
      se(cartanamesa1 == cartap1[i]){
        cartap1[i] = "ta na mesa carai"
        aux2 = verdadeiro
        pare
      }
    }
    se(aux2 == falso){
      escreva ("jogada invalida, jogue de novo \n")
    }
  }

  funcao cartasjogadap2(){
    escreva("escolha sua carta \n")
    leia(cartanamesa2)
    aux2 = falso

    para(inteiro i = 0; i < 3; i++){
      se(cartanamesa2 == cartap2[i]){
        cartap2[i] = "ta na mesa carai"
        aux2 = verdadeiro
        pare
      }
    }
    se(aux2 == falso){
      escreva ("jogada invalida, jogue de novo \n")
    }
  }

  funcao mao_cartas(){
    inteiro aux = 0
    para(inteiro i = 0; i < 3; i ++){
      aux = u.sorteia(0,39)
      cartap1[i] = cartas[aux]
      pontoscarta1[i] = valorcartas[aux]
      se(cartas[aux] == ""){
        aux = u.sorteia(0,39)
        cartap1[i] = cartas[aux]
        pontoscarta1[i] = valorcartas[aux]
      }
      cartas[aux] = ""
    }
    para(inteiro i = 0; i < 3; i++){
      aux = u.sorteia(0,39)
      cartap2[i] = cartas[aux]
      pontoscarta2[i] = valorcartas [aux]
      se(cartas[aux] == ""){
        aux = u.sorteia(0,39)
        cartap2[i] = cartas[aux]
        pontoscarta2[i] = valorcartas[aux]
      }
      cartas[aux] = ""
    }
    escreva(cartap1,"\n")
    escreva(cartap2, "\n")
  }

  funcao cartasPlayerUm(){
    escreva("Player1: \n")
    para(inteiro i = 0; i < 3; i++){
      escreva(cartap1[i],"\n")
    }
  }

  funcao cartasPlayerDois(){
    escreva("Player2: \n")
    para(inteiro i = 0; i < 3; i++){
      escreva(cartap2[i],"\n")
    }
  }

  funcao mostrarwinnermao(){
    se(numRodada == 3){
      se(pontorodada1 > pontorodada2){
        pontomao1 ++
      }
      senao se(pontorodada1 < pontorodada2){
        pontomao2 ++
      }
      pontorodada1 = 0
      pontorodada2 = 0
      numRodada = 0
    }
  }

  funcao winnerrodada(inteiro numRodada){
    para(inteiro i = 0; i < 3; i++){
      se(pontoscarta1[i] > pontoscarta2[i]){
        pontorodada1 ++
        pare
      }
      senao se(pontoscarta1[i] < pontoscarta2[i]){
        pontorodada2 ++
        pare
      }
      senao se(pontoscarta1[i] == pontoscarta2[i]){
        pare
      }
    }
  }
}
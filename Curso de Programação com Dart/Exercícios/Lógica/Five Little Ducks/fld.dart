/*
  Xuxa, a rainha dos baixinhos, criou uma música que tem o seguinte formato:

  n patinhos foram passear
  Além das montanhas
  Para brincar
  A mamãe gritou: Quá, quá, quá, quá
  Mas só n-1 patinhos voltaram de lá.

  Que se repete até nenhum patinho voltar de lá.
  Ao final, todos os patinhos voltam:

  A mamãe patinha foi procurar
  Além das montanhas
  Na beira do mar
  A mamãe gritou: Quá, quá, quá, quá
  E os n patinhos voltaram de lá.

  Música original: Five little ducks
  Composição:  Murray Cook, Jeff Fatt, Anthony Field, Greg Page, com a versão em português escrita por Vanessa Alves.

  Agora meu amigo, é a sua vez. Você precisa automatizar a impressão dessa música no terminal usando for e while. Mas lembre-se não adianta nada você colocar ela inteira dentro de um print (assim você não aprende nada). 

  Procure os pontos que se repetem e crie uma estrutura capaz de mostrar esses pontos automaticamente.  
 */

import 'dart:io';
void main() {
  while(true) {
    print('Escolha quantos patinhos você quer que vão passear: (ou digite "-1" para sair))');
    int ducks = int.parse(stdin.readLineSync()!);
    
    if (ducks == -1) {
      print('\nPrograma encerrado!\n');
      break;
    }

    try {
      for (int i = ducks; i >= 0; i--) {
      // Controla os patos que foram
        if (i == 1) {
          print('$i patinho foi passear');
        } 
        if (i > 1) {
          print('$i patinhos foram passear');
        }
        else {
          print('A mamãe patinha foi procurar');
        }

        print('Além das montanhas');
        print('Na beira do mar');
        print('A mamãe gritou: Quá, quá, quá, quá');

        // Controla os patos que voltaram
        if (i == 1) {
          print('Mas nenhum patinho voltou de lá.\n');
        } 
        if (i > 1) {
          print('Mas só $i patinhos voltaram de lá.\n');
        }
        if (i == 0) {
          print('E os $ducks patinhos voltaram de lá.\n');
        }
      }
    } catch (e) {
      print('Erro: $e');
      print('\nCertifique-se de escolher um número inteiro.\n');
    }
  }
}
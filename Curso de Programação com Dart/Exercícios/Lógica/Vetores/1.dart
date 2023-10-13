// Leia um vetor de 12 posições e em seguida ler também dois valores X e Y quaisquer correspondentes a duas posições no vetor. Ao final seu programa deverá escrever a soma dos valores encontrados nas respectivas posições X e Y.

import 'dart:io';

void main() {
  List<int> numbers = [3, 42, 57, -1, 67, 88, 0, 12, 99, 100, 1, 2];

  while (true) {
    for (int i = 0; i < numbers.length; i++) {
      print('Índice: $i - Número: ${numbers[i]}');
    }

    int x, y;

    try {
      print('Escolha dois índices do vetor para somar (ou digite "s" para sair): ');
      String input = stdin.readLineSync()!;
      
      if (input.toLowerCase() == 's') {
        print('\nPrograma encerrado!\n');
        break;
      }
      
      x = int.parse(input);
      y = int.parse(stdin.readLineSync()!);
      calculateSum(numbers, x, y);
    } catch (e) {
      print('Erro: $e');
      print('\nCertifique-se de escolher índices válidos.\n');
    }
  }
}

calculateSum(List<int> numbers, int x, int y) {
  if (x >= 0 && x < numbers.length && y >= 0 && y < numbers.length) {
    int sum = numbers[x] + numbers[y];
    print('\nA soma dos números escolhidos é: $sum\n');
  } else {
      print('\nCertifique-se de escolher índices válidos.\n');
  }
}

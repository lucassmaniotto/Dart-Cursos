// Leia um vetor de 16 posições e troque os 8 primeiros valores pelos 8 últimos e vice-e-versa. Escreva ao final o vetor obtido.

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9 ,10, 11 ,12 ,13 ,14 ,15 ,16];

  print('Vetor original: $numbers');
  sortInTheMiddle(numbers);
  print('Vetor final: $numbers');
  sortInTheMiddle(numbers);
  print('Vetor original: $numbers');
}

sortInTheMiddle(List<int> numbers) {
  List<int> auxList = [];

  for (int i = 0; i < 8; i++) {
    auxList.add(numbers[i]);
  }

  for (int i = 0; i < 8; i++) {
    numbers.removeAt(0);
  }

  for (int i = 0; i < 8; i++) {
    numbers.add(auxList[i]);
  }
}
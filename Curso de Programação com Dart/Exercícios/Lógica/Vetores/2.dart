// Declare um vetor de 10 posições e o preencha com os 10 primeiros números impares e o escreva.

void main() {
  List<int> numbers = [];

  for (int i = 0; i < 10; i++) {
    numbers.add(i * 2 + 1);
  }

  print(numbers);
}
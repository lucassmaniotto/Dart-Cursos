// Leia um vetor de 40 posições e acumule os valores do primeiro elemento no segundo, deste no terceiro e assim por diante. Ao final, escreva o vetor obtido.

void main() {
  List<int> numbers = [1, 2, 2, 4, 3, 6, 4, 8, 5, 10, 6, 12, 7, 14, 8, 16, 9, 18, 10, 20, 11, 22, 12, 24, 13, 26, 14, 28, 15, 30, 16, 32, 17, 34, 18, 36, 19, 38, 20, 40];

  for (int i = 1; i < numbers.length; i++) {
    numbers[i] += numbers[i - 1];
  }

  print(numbers);
}
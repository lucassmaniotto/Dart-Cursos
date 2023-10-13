// Leia dois vetores de 20 posições e calcule um terceiro vetor contendo, nas posições pares os valores do primeiro e nas posições impares os valores do segundo.

void main() {
  List numbers1 = [];
  List numbers2 = [];

  for (int i = 1; i <= 20; i++) {
    numbers1.add(i);
    numbers2.add(i * 2);
  }

  print(numbers1);
  print(numbers2);

  List numbers3 = [];

  for (int i = 0; i < 20; i++) {
    numbers3.add(numbers1[i]);
    numbers3.add(numbers2[i]);
  }

  print(numbers3);
}
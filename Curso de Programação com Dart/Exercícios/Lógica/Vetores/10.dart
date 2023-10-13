// Leia um vetor de 5 posições contendo os caracteres de um numero. Em seguida escreva esse numero por extenso.

void main () {
  List<String> numbers = ['c', 'i', 'n', 'c', 'o'];
  String number = '';

  for (String n in numbers) {
    number += n;
  }

  if (number == 'cinco') {
    print('O valor concatenado $number tem seu length igual a 5, no qual está escrito por extenso o número cinco :)');
  } else {
    print('Número não reconhecido');
  }
}
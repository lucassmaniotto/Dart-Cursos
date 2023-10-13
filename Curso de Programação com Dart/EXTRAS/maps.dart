void main () {
  // Chave - Valor
  Map<String, int> fruitsWithQuantity = {
    'Apple': 10,
    'Banana': 5,
    'Orange': 3,
  };

  print(fruitsWithQuantity['Apple']);
  print(fruitsWithQuantity['Banana']);
  print(fruitsWithQuantity['Orange']);

  fruitsWithQuantity['Apple'] = 20;
  print(fruitsWithQuantity['Apple']);

  fruitsWithQuantity.remove('Orange');

  fruitsWithQuantity.forEach((key, value) => print('$key - $value'));

  fruitsWithQuantity.update('Banana', (value) => value + 10);

  fruitsWithQuantity.forEach((key, value) => print('$key - $value'));

  fruitsWithQuantity.keys.forEach((key) => print(key));
  fruitsWithQuantity.values.forEach((value) => print(value));

}
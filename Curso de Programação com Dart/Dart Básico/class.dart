class Cat {

  final String name;
  final String breed;
  final int age;
  final double weight;
  final bool isIndoor;

  Cat(this.name, this.breed, this.age, this.weight, this.isIndoor);

  String toString() {
    return 'Nome: $name\nRaça: $breed\nIdade: $age\nPeso: $weight\nGato de apartamento: $isIndoor';
  }

  int catAgeInCatYears() {
    return age * 7;
  }
}

void main() {
  Cat cat = Cat('Celso', 'Vira-lata', 1, 5.5, true);
  print(cat);

  print('Idade do gato em anos de gato: ${cat.catAgeInCatYears()}');
}
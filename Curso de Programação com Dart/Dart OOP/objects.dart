abstract class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void greet() {
    print('Hello, my name is $name');
  }
}

class Student extends Person {
  String course;

  Student(String name, int age, this.course) : super(name, age);

  @override
  void greet() {
    print('Hello, my name is $name, I am $age years old, and I am a student of $course');
  }
}

abstract class Animal {
  void makeSound();
}

class Cat implements Animal {

  final String name;
  final String breed;
  final int age;
  final double weight;
  final bool isIndoor;
  String _color;

  String get color => _color;
  set color(String color) => _color = color;

  Cat(this.name, this.breed, this.age, this.weight, this.isIndoor, this._color);

  String toString() {
    return 'Nome: $name\nRaça: $breed\nIdade: $age\nCor: $_color\nPeso: $weight\nGato de apartamento: $isIndoor';
  }

  int catAgeInCatYears() {
    return age * 7;
  }

  @override
  String makeSound() {
    return 'Meow meow';
  }

}

void main() {
  
  Cat cat = Cat('Celso', 'Vira-lata', 1, 5.5, true, 'Branco');
  print(cat);
  print('\nAlgo está errado, Celso não é branco!');
  
  cat.color = 'Cinza';

  print('\nCor correta do gato: ${cat.color}');
  print('\nIdade do gato em anos de humanos: ${cat.catAgeInCatYears()}');

  print('\n${cat.name} diz: ${cat.makeSound()}');

  print('\n-----------------------------------------\n');

  Person person = Student('Lucas', 23, 'Computer Science');
  person.greet();
}
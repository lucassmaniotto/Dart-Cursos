void main() {
  String name = 'V';
  int age = 23;
  double eddies = 366798.32;
  bool haveCyberware = true;
  List<String> cyberware = ['Kerenzikov', 'Mantis Blades', 'Sandevistan'];
  Map<String, dynamic> stats = {
    'Body': 6,
    'Intelligence': 5,
    'Reflexes': 8,
    'Technical Ability': 6,
    'Cool': 6,
    'Luck': 4,
  };

  print('Name: $name');
  print('Age: $age');
  print('Eddies: $eddies');
  print('Body Modification: $haveCyberware');
  print('''Cyberware:
    ${cyberware[0]}
    ${cyberware[1]}
    ${cyberware[2]}'''
  ); 
  print('''Stats:
    Body: ${stats['Body']}
    Intelligence: ${stats['Intelligence']}
    Reflexes: ${stats['Reflexes']}
    Technical Ability: ${stats['Technical Ability']}
    Cool: ${stats['Cool']}
    Luck: ${stats['Luck']}'''
  );
}

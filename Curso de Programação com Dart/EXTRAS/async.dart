void main() async {
  String name = 'Rua JK';
  Future<String> cep = getCEPByName(name);
  late String cepValue;

  // cep.then((value) => cepValue = value);

  cepValue = await cep;

  print('CEP: $cepValue');
}

// External Service
Future<String> getCEPByName(String name) {
  // Simulação de requisição
  return Future.delayed(Duration(seconds: 2), () {
    return '12345-678';
  });
}
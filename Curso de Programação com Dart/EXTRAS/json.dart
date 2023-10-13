import 'dart:convert';

void main() {
  // Convertendo um JSON para String
  String json = '''
{
  "user": "licaaaaas",
  "password": "Kas@#MGR)_(3&sdfsd_-+sfd)"
}
''';

  print(json);

  var result = jsonDecode(json);
  print(result);
  print('\nUsuário: ' + result['user'] + ' ' + 'Senha: ' + result['password']);

  print('\n--------------------------------------------\n');
  // Convertendo um JSON para Map
  String json2 = '''
{
  "user": "licaaaaas",
  "password": "Kas@#MGR)_(3&sdfsd_-+sfd)",
  "permissions": [
    "create_users",
    "delete_users",
    "update_users",
    "read_users"
  ]
}
''';

  print(json2);

  Map result2 = jsonDecode(json2);
  print(result2['permissions']);

  print('\n--------------------------------------------\n');
  // Convertendo um Map para JSON
  Map mapEx = {
    'nome': 'Lucas',
    'pass': '123456',
    'permissions': [
      'create_users',
      'update_users',
      'read_users'
    ]
  };

  var jsonEx = jsonEncode(mapEx);
  print(jsonEx);

  print('\n--------------------------------------------\n');
}
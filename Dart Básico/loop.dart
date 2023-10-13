void main() {
  // for loop
  for (int i = 0; i < 10; i++) {
    print(i);
  }
  print('-----------------');

  // while loop
  int i = 0;
  while (i < 10) {
    print(i);
    i++;
  }
  print('-----------------');

  // do while loop
  i = 0;
  do {
    print(i);
    i++;
  } while (i < 10);
  print('-----------------');


  // for in loop
  List<String> names = ['Lucas', 'Smaniotto'];
  for (String name in names) {
    print(name);
  }
  print('-----------------');

  // for each loop
  names.forEach((name) => print(name));

  print('-----------------');
  // break
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      break;
    }
    print(i);
  }

  print('-----------------');
  // continue
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      continue;
    }
    print(i);
  }
}
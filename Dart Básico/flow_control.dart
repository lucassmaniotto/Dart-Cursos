void main() {
  bool goFoward = true;

  if (goFoward) {
    print('Go foward!');
  // ignore: dead_code
  } else {
    print('Go back!');
  }

  // -----------------
  int value = 2;
  switch (value) {
    case 0:
      print('Value is 0');
      break;
    case 1:
      print('Value is 1');
      break;
    case 2:
      print('Value is 2');
      break;
    default:
      print('Value is not 1 or 2');
  }
}
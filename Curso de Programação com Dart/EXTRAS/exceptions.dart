void main() {

/*   
  try {
      int result = 12 ~/ 0;
      print(result);
    } catch (e /*, stackStrace*/) {
      print('Error: $e');
      // print(stackStrace);
      // rethrow; -> IntegerDivisionByZeroException
      //throw Exception('Cannot divide by zero');
      throw CustomError('Cannot divide by zero');
    } 
  */

  // -------------------------------------------------- //

  try {
    Login().login('test@email.com', '123');
  } on PasswordLengthError catch (e) {
    print(e);
  } catch (e) {
    print(e);
  } finally {
    print('Login attempt ended');
  }

}

class Login {
  void login(String email, String password) {
    if (password.length <= 6) {
      throw PasswordLengthError('Password must be at least 6 characters long');
    } else {
      print('Login successful');
    }
  }
}

class CustomError implements Exception {
  final String cause;
  CustomError(this.cause);

  @override
  String toString() {
    return cause;
  }
}

class PasswordLengthError implements Exception {
  final String cause;
  PasswordLengthError(this.cause);

  @override
  String toString() {
    return cause;
  }
}
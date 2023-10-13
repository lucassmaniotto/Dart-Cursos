void main() {
  Payment payment = Payment();
  payment.pay(PaymentType.PIX);
  payment.pay(PaymentType.CREDIT);
  payment.pay(PaymentType.DEBIT);
  payment.pay(PaymentType.CASH);

  print('\n-----------------\n');

  Payment2 payment2 = Payment2();
  payment2.pay(PaymentType2.PIX);
  payment2.pay(PaymentType2.CREDIT);
  payment2.pay(PaymentType2.DEBIT);
  payment2.pay(PaymentType2.CASH);
}

enum PaymentType {
  PIX,
  CREDIT,
  DEBIT,
  CASH
}

extension PaymentTypeExtension on PaymentType {
  String toValue() {
    Map paymentTypeExtention = {
      PaymentType.PIX: 'Pix',
      PaymentType.CREDIT: 'Credit',
      PaymentType.DEBIT: 'Debit',
      PaymentType.CASH: 'Cash',
    };

    return paymentTypeExtention[this];
  }
}

class Payment {
  void pay(PaymentType type) {
    if (type.toValue() == 'Pix') {
      print('Paying with Pix');
    } else if (type.toValue() == 'Credit') {
      print('Paying with Credit');
    } else if (type.toValue() == 'Debit') {
      print('Paying with Debit');
    } else if (type.toValue() == 'Cash') {
      print('Paying with Cash');
    } else {
      print('Invalid payment type');
    }
  }
}

// Dart 2.17 - Enumerated types

enum PaymentType2 {
  /* PIX,
  CREDIT,
  DEBIT,
  CASH */

  PIX(1, 'Pix'),
  CREDIT(2, 'Credit'),
  DEBIT(3, 'Debit'),
  CASH(4,'Cash');

  final int id;
  final String value;
  const PaymentType2(this.id, this.value);
}

class Payment2 {
  void pay(PaymentType2 type) {
    if (type.value == 'Pix') {
      print('Paying with Pix - ${type.id}');
    } else if (type.value == 'Credit') {
      print('Paying with Credit - ${type.id}');
    } else if (type.value == 'Debit') {
      print('Paying with Debit - ${type.id}');
    } else if (type.value == 'Cash') {
      print('Paying with Cash - ${type.id}');
    } else {
      print('Invalid payment type');
    }
  }
}
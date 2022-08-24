import 'package:flutter/material.dart';

class Receiver {
  bool bankTranfer;
  bool moneyTranfer;
  // ignore: non_constant_identifier_names
  bool PayPalTransfer;

  Receiver(this.bankTranfer, this.moneyTranfer, this.PayPalTransfer);
}

abstract class PaymentHandler {
  PaymentHandler? successor;
  PaymentHandler(this.successor);
  void handle(Receiver receiver);
}

class BankPaymentHandler extends PaymentHandler {
  BankPaymentHandler([PaymentHandler? successor]) : super(null);

  @override
  void handle(Receiver receiver) {
    if (receiver.bankTranfer == true) {
      debugPrint('Выполняем банковский перевод');
    } else if (successor != null) {
      successor!.handle(receiver);
    }
  }
}

class PayPalPaymentHandler extends PaymentHandler {
  PayPalPaymentHandler([PaymentHandler? successor]) : super(null);

  @override
  void handle(Receiver receiver) {
    if (receiver.PayPalTransfer == true) {
      debugPrint('Выполняем перевод через PayPal');
    } else if (successor != null) {
      successor!.handle(receiver);
    }
  }
}

class MoneyPaymentHandler extends PaymentHandler {
  MoneyPaymentHandler([PaymentHandler? successor]) : super(null);

  @override
  void handle(Receiver receiver) {
    if (receiver.moneyTranfer == true) {
      debugPrint('Выполняем перевод через системы денежных переводов');
    } else if (successor != null) {
      successor!.handle(receiver);
    }
  }
}

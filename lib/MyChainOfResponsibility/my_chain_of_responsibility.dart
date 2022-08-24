import 'package:flutter/material.dart';
import 'package:patterns/MyChainOfResponsibility/classes.dart';

void runMyChainOfResponsibility() {
  Receiver receiver = Receiver(false, true, true);

  PaymentHandler bankPaymentHandler = BankPaymentHandler();
  PaymentHandler moneyPaymentHandler = MoneyPaymentHandler();
  PaymentHandler paypalPaymentHandler = PayPalPaymentHandler();

  bankPaymentHandler.successor = paypalPaymentHandler;
  paypalPaymentHandler.successor = moneyPaymentHandler;

  bankPaymentHandler.handle(receiver);
}

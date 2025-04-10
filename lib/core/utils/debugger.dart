import 'package:flutter/foundation.dart';

class Debugger {
  static void errorPrint(String text) {
    if (kDebugMode) { print('\x1B[31m⛔️: $text\x1B[0m'); }
  }

  static void warningPrint(String text) {
    if (kDebugMode) { print('\x1B[33m⚠️: $text\x1B[0m'); }
  }

  static void successPrint(String text) {
    if (kDebugMode) { print('\x1B[32m✅: $text\x1B[0m'); }
  }

  static void infoPrint(String text) {
    if (kDebugMode) { print('\x1B[36mℹ️: $text\x1B[0m'); }
  }

  static void whitePrint(String text) {
    if (kDebugMode) { print('\x1B[37m▫️: $text\x1B[0m'); }
  }

  static void darkPrint(String text) {
    if (kDebugMode) { print('\x1B[37m◾️: $text\x1B[0m'); }
  }
}
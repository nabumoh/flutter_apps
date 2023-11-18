// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'dart:developer' as developer;
// import 'package:ansi/ansi.dart';
import 'package:logger/logger.dart';
import 'package:ansicolor/ansicolor.dart';

var logger = Logger(
  printer: PrettyPrinter(colors: true),
);

// green info log
void logInfo(var msg) {
  logger.i(msg, error: 'Log Info');
}

void logSuccess(var msg) {
  logger.d(msg, error: 'Log Success');
}

// Yellow warning log
void logWarning(var msg) {
  logger.w(msg, error: 'Log Warning');
}

// Red error log
void logError(var msg) {
  logger.e(msg, error: 'Log Error');
}


//* to avoid invoke print in production code.
final greenPen = AnsiPen()..green();

void f(String message) {
  // debugPrint('debug: $message');
  print(greenPen(message));
}

// // Blue text
// void logInfo(String msg) {
//   developer.log('\x1B[34m$msg\x1B[0m');
// }

// // Green text
// void logSuccess(String msg) {
//   developer.log('\x1B[32m$msg\x1B[0m');
// }

// // Yellow text
// void logWarning(String msg) {
//   developer.log('\x1B[33m$msg\x1B[0m');
// }

// // Red text
// void logError(String msg) {
//   developer.log('\x1B[31m$msg\x1B[0m');
// }
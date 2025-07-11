import 'dart:async';

import 'package:flutter/material.dart';
import 'package:metro_mate/core/di/service_locator.dart';
import 'package:metro_mate/app/metro_mate.dart';

void main() {
  runZonedGuarded<Future<void>>(() async {
    await _initializeApp();
    runApp(const MetroMate());
  }, (error, stackTrace) => (error, stackTrace, fatal: true));
}

Future<void> _initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ServiceLocator.setUp();
}

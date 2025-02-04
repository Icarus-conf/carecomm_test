import 'package:carecomm_test/injectable.dart';
import 'package:carecomm_test/my_app.dart';
import 'package:flutter/material.dart';

void main() {
  configureDependencies();

  runApp(
    const MyApp(),
  );
}

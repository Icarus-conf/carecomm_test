import 'package:carecomm_test/features/home/data/models/product_model.dart';
import 'package:carecomm_test/injectable.dart';
import 'package:carecomm_test/my_app.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(ProductModelAdapter());
  await Hive.openBox<ProductModel>('favoritesBox');
  configureDependencies();

  runApp(
    const MyApp(),
  );
}

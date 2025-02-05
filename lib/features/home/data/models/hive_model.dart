import 'package:hive/hive.dart';
import 'package:carecomm_test/features/home/data/models/product_model.dart';
import 'package:injectable/injectable.dart';

@module
abstract class HiveModule {
  @lazySingleton
  Box<ProductModel> get favoritesBox => Hive.box<ProductModel>('favoritesBox');
}

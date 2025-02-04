import 'package:carecomm_test/features/home/data/models/product_model.dart';

abstract class DataSource {
  Future<ProductsResponseModel> getProductsList();
}

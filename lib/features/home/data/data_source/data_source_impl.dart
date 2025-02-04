import 'dart:developer';

import 'package:carecomm_test/core/api/dio_helper.dart';
import 'package:carecomm_test/core/api/end_points.dart';
import 'package:carecomm_test/features/home/data/data_source/date_source.dart';
import 'package:carecomm_test/features/home/data/models/product_model.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: DataSource)
class DataSourceImpl implements DataSource {
  @override
  Future<ProductsResponseModel> getProductsList() async {
    try {
      var response = await DioHelper.getData(
        url: '${EndPoints.BASE_URL}${EndPoints.productsListEndPoint}',
      );

      if (response.data is List) {
        List<ProductModel> properties = (response.data as List)
            .map((property) => ProductModel.fromJson(property))
            .toList();

        return ProductsResponseModel(properties: properties);
      } else {
        throw Exception('Unexpected response format: ${response.data}');
      }
    } catch (e) {
      log('getProductsList Exception: $e');
      throw Exception('Failed to fetch data: $e');
    }
  }
}

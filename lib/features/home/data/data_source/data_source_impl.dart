import 'dart:developer';

import 'package:carecomm_test/core/api/dio_helper.dart';
import 'package:carecomm_test/core/api/end_points.dart';
import 'package:carecomm_test/features/home/data/data_source/date_source.dart';
import 'package:carecomm_test/features/home/data/models/product_model.dart';
import 'package:injectable/injectable.dart';

/// Implementation of the DataSource interface responsible for fetching product data from the API.
@Injectable(as: DataSource)
class DataSourceImpl implements DataSource {
  @override
  Future<ProductsResponseModel> getProductsList() async {
    try {
      // Make a GET request to fetch product data from the API.
      var response = await DioHelper.getData(
        url: '${EndPoints.BASE_URL}${EndPoints.productsListEndPoint}',
      );

      // Check if the response is in the expected format (a list of products).
      if (response.data is List) {
        // Convert the response data into a list of ProductModel objects.
        List<ProductModel> products = (response.data as List)
            .map((product) => ProductModel.fromJson(product))
            .toList();

        // Return the list wrapped in a ProductsResponseModel.
        return ProductsResponseModel(properties: products);
      } else {
        // Throw an exception if the response format is unexpected.
        throw Exception('Unexpected response format: ${response.data}');
      }
    } catch (e) {
      // Log the error message for debugging purposes.
      log('getProductsList Exception: $e');

      // Rethrow the exception to notify the caller about the failure.
      throw Exception('Failed to fetch data: $e');
    }
  }
}

import 'package:carecomm_test/core/error/failures.dart';
import 'package:carecomm_test/features/home/data/models/product_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, ProductsResponseModel>> getProductsList();
}

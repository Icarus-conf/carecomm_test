import 'dart:developer';

import 'package:carecomm_test/core/error/failures.dart';
import 'package:carecomm_test/features/home/data/data_source/date_source.dart';
import 'package:carecomm_test/features/home/data/models/product_model.dart';
import 'package:carecomm_test/features/home/domain/repository/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeRepo)
class HomeRepoImpl implements HomeRepo {
  DataSource source;
  HomeRepoImpl(this.source);

  @override
  Future<Either<Failures, ProductsResponseModel>> getProductsList() async {
    try {
      var response = await source.getProductsList();
      return Right(response);
    } catch (e) {
      log('getProductsList $e');
      return Left(RemoteFailures(e.toString()));
    }
  }
}

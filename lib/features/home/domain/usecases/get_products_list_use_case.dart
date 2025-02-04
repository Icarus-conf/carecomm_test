import 'package:carecomm_test/core/error/failures.dart';
import 'package:carecomm_test/features/home/data/models/product_model.dart';
import 'package:carecomm_test/features/home/domain/repository/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProductsListUseCase {
  HomeRepo homeRepo;
  GetProductsListUseCase(this.homeRepo);
  Future<Either<Failures, ProductsResponseModel>> call() =>
      homeRepo.getProductsList();
}

import 'package:carecomm_test/core/enums/request_status.dart';
import 'package:carecomm_test/core/error/failures.dart';
import 'package:carecomm_test/features/home/data/models/product_model.dart';
import 'package:carecomm_test/features/home/domain/usecases/get_products_list_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:bloc/bloc.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  GetProductsListUseCase getProductsListUseCase;

  HomeBloc(
    this.getProductsListUseCase,
  ) : super(HomeState()) {
    on<GetProductsListEvent>((event, emit) async {
      emit(state.copyWith(
        getProductsListState: RequestStatus.loading,
      ));
      var result = await getProductsListUseCase();
      result.fold(
        (failure) {
          emit(state.copyWith(
              getProductsListState: RequestStatus.failure,
              getProductsListFailures: failure));
        },
        (model) {
          emit(state.copyWith(
            getProductsListState: RequestStatus.success,
            productsResponseModel: model,
          ));
        },
      );
    });
  }
}

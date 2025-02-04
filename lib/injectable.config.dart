// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:carecomm_test/features/home/data/repository/home_repo_impl.dart';
import 'package:carecomm_test/features/home/domain/usecases/get_products_list_use_case.dart';
import 'package:carecomm_test/features/home/presentation/bloc/home_bloc.dart';
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'features/home/data/data_source/data_source_impl.dart' as _i944;
import 'features/home/data/data_source/date_source.dart' as _i978;
import 'features/home/domain/repository/home_repo.dart' as _i47;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i978.DataSource>(() => _i944.DataSourceImpl());
    gh.factory<_i47.HomeRepo>(() => HomeRepoImpl(gh<_i978.DataSource>()));
    gh.factory<GetProductsListUseCase>(
        () => GetProductsListUseCase(gh<_i47.HomeRepo>()));
    gh.factory<HomeBloc>(() => HomeBloc(gh<GetProductsListUseCase>()));
    return this;
  }
}

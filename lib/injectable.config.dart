// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:hive/hive.dart' as _i979;
import 'package:injectable/injectable.dart' as _i526;

import 'features/home/data/data_source/data_source_impl.dart' as _i944;
import 'features/home/data/data_source/date_source.dart' as _i978;
import 'features/home/data/models/hive_model.dart' as _i478;
import 'features/home/data/models/product_model.dart' as _i38;
import 'features/home/data/repository/home_repo_impl.dart' as _i1072;
import 'features/home/domain/repository/home_repo.dart' as _i47;
import 'features/home/domain/usecases/get_products_list_use_case.dart' as _i494;
import 'features/home/presentation/bloc/home_bloc.dart' as _i123;

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
    final hiveModule = _$HiveModule();
    gh.lazySingleton<_i979.Box<_i38.ProductModel>>(
        () => hiveModule.favoritesBox);
    gh.factory<_i978.DataSource>(() => _i944.DataSourceImpl());
    gh.factory<_i47.HomeRepo>(
        () => _i1072.HomeRepoImpl(gh<_i978.DataSource>()));
    gh.factory<_i494.GetProductsListUseCase>(
        () => _i494.GetProductsListUseCase(gh<_i47.HomeRepo>()));
    gh.factory<_i38.ProductModel>(() => _i38.ProductModel(
          id: gh<num>(),
          title: gh<String>(),
          price: gh<num>(),
          description: gh<String>(),
          category: gh<String>(),
          image: gh<String>(),
        ));
    gh.factory<_i123.HomeBloc>(() => _i123.HomeBloc(
          gh<_i494.GetProductsListUseCase>(),
          gh<_i979.Box<_i38.ProductModel>>(),
        ));
    return this;
  }
}

class _$HiveModule extends _i478.HiveModule {}

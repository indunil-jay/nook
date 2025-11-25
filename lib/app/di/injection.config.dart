// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:nook/app/di/register_module.dart' as _i50;
import 'package:nook/core/network/network_info.dart' as _i687;
import 'package:nook/features/authentication/data/datasources/auth_remote_datasource.dart'
    as _i443;
import 'package:nook/features/authentication/data/repositories/auth_repository.dart'
    as _i899;
import 'package:nook/features/authentication/data/repositories/auth_repository_impl.dart'
    as _i223;
import 'package:nook/features/authentication/domain/usecases/login_user.dart'
    as _i657;
import 'package:nook/features/authentication/presentation/bloc/login_bloc.dart'
    as _i842;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i687.NetworkInfo>(() => _i687.NetworkInfoImpl());
    gh.lazySingleton<_i443.AuthRemoteDataSource>(
      () => _i443.AuthRemoteDataSourceImpl(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i899.AuthRepository>(
      () => _i223.AuthRepositoryImpl(
        remote: gh<_i443.AuthRemoteDataSource>(),
        networkInfo: gh<_i687.NetworkInfo>(),
      ),
    );
    gh.factory<_i657.LoginUser>(
      () => _i657.LoginUser(gh<_i899.AuthRepository>()),
    );
    gh.factory<_i842.LoginBloc>(
      () => _i842.LoginBloc(loginUser: gh<_i657.LoginUser>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i50.RegisterModule {}

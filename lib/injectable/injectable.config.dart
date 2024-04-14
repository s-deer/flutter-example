// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:convert' as _i5;

import 'package:dio/dio.dart' as _i4;
import 'package:example/data/api/api.dart' as _i6;
import 'package:example/data/api/services/users_service.dart' as _i9;
import 'package:example/data/codecs/user_dto_converter.dart' as _i8;
import 'package:example/data/repositories/users_repository_impl.dart' as _i10;
import 'package:example/domain/domain.dart' as _i7;
import 'package:example/domain/usecases/get_users_usecase.dart' as _i11;
import 'package:example/networking/networing_module.dart' as _i13;
import 'package:example/presentation/pages/users/bloc/users_bloc.dart' as _i12;
import 'package:example/presentation/routes/app_router.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkingModule = _$NetworkingModule();
    gh.factory<_i3.AppRouter>(() => _i3.AppRouter());
    gh.factory<_i4.Dio>(() => networkingModule.apiClient);
    gh.factory<_i5.Converter<_i6.UserDto, _i7.User>>(
        () => const _i8.UserDtoDecoder());
    gh.factory<_i9.UsersService>(() => _i9.UsersService(gh<_i4.Dio>()));
    gh.factory<_i7.UsersRepository>(() => _i10.UserRepositoryImpl(
          service: gh<_i6.UsersService>(),
          userDtoConverter: gh<_i5.Converter<_i6.UserDto, _i7.User>>(),
        ));
    gh.factory<_i11.GetUsersUsecase>(
        () => _i11.GetUsersUsecase(usersRepository: gh<_i7.UsersRepository>()));
    gh.factory<_i12.UsersBloc>(() => _i12.UsersBloc(gh<_i7.GetUsersUsecase>()));
    return this;
  }
}

class _$NetworkingModule extends _i13.NetworkingModule {}

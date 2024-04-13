import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:fpdart/fpdart.dart';

import 'package:example/core/core.dart';
import 'package:example/networking/networking.dart';
import 'package:example/domain/domain.dart';

import '../api/api.dart';

@Injectable(as: UsersRepository)
class UserRepositoryImpl with DioExceptionHandler implements UsersRepository {
  final UsersService _service;
  final Converter<UserDto, User> _userDtoConverter;

  UserRepositoryImpl({
    required UsersService service,
    required Converter<UserDto, User> userDtoConverter,
  })  : _service = service,
        _userDtoConverter = userDtoConverter;

  @override
  Future<Either<Failure, List<User>>> getUsers() async {
    final result = await handleRequest(() => _service.getUsers());

    return result.map((UsersResponse response) {
      return response.users.map(_userDtoConverter.convert).toList();
    });
  }
}

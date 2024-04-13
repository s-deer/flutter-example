import 'dart:convert';

import 'package:injectable/injectable.dart';

import 'package:example/domain/domain.dart';

import '../api/api.dart';

@Injectable(as: Converter<UserDto, User>)
class UserDtoDecoder extends Converter<UserDto, User> {
  const UserDtoDecoder();

  @override
  User convert(UserDto input) {
    return User(
      id: input.id,
      firstName: input.firstName,
      lastName: input.lastName,
      username: input.username,
      email: input.email,
    );
  }
}

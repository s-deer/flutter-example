import 'package:fpdart/fpdart.dart';

import 'package:example/core/core.dart';

import '../entities/entities.dart';

abstract interface class UsersRepository {
  Future<Either<Failure, List<User>>> getUsers();
}
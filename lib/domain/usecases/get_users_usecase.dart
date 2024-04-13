import 'package:fpdart/fpdart.dart';

import 'package:example/core/core.dart';
import 'package:example/domain/domain.dart';

class GetUsersUsecase extends NoParamsAsyncUseCase<List<User>> {
  final UsersRepository _usersRepository;

  GetUsersUsecase({required UsersRepository usersRepository})
      : _usersRepository = usersRepository;

  @override
  Future<Either<Failure, List<User>>> execute(NoParams? param) {
    return _usersRepository.getUsers();
  }
}

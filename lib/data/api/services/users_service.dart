import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import 'package:example/data/data.dart';

part 'users_service.g.dart';

@injectable
@RestApi()
abstract class UsersService {
  @factoryMethod
  factory UsersService(Dio dio) = _UsersService;

  @GET('/users')
  Future<UsersResponse> getUsers();
}

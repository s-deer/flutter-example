
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:example/core/core.dart';

import 'dio_client_factory.dart';

@module
abstract class NetworkingModule {
  Dio get apiClient {
    return DioClientFactory().createClient(baseUrl: AppEnvironment.apiUrl);
  }
}
import 'package:dio/dio.dart';

class DioClientFactory {
  Dio createClient({
    String baseUrl = '',
    List<Interceptor> interceptors = const [],
  }) {
    final options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 10),
      sendTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      contentType: 'application/json',
    );

    final client = Dio(options);

    client.interceptors.addAll(interceptors);

    return client;
  }
}

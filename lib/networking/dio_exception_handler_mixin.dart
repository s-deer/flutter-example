import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import 'package:example/core/core.dart';

mixin DioExceptionHandler {
  Future<Either<Failure, T>> handleRequest<T>(Future<T> Function() cb) async {
    try {
      return Right(await cb());
    } on DioException catch (exception) {
      return Left(NetworkFailure(exception));
    } on Failure catch (failure) {
      return Left(failure);
    } catch (err, stackTrace) {
      return Left(InternalAppFailure(err, stackTrace));
    }
  }
}

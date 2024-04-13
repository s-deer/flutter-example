import 'package:fpdart/fpdart.dart';

import 'core.dart';

abstract class UseCase<P, R> {
  const UseCase();

  R execute(P param);
  R call(P param);
}

abstract class AsyncUseCase<P, R> extends UseCase<P, Future<Either<Failure, R>>> {
  const AsyncUseCase();

  @override
  Future<Either<Failure, R>> call(P param) async {
    try {
      return await execute(param);
    } catch (e, stackTrace) {
      return Left(InternalAppFailure(e, stackTrace));
    }
  }
}

abstract class NoParamsAsyncUseCase<R> extends AsyncUseCase<NoParams?, R> {
  const NoParamsAsyncUseCase();

  @override
  Future<Either<Failure, R>> call([NoParams? param]) => super.call(param);
}

abstract class StreamUseCase<P, R> extends UseCase<P, Either<Failure, Stream<R>>> {
  const StreamUseCase();

  @override
  Either<Failure, Stream<R>> call(P param) {
    try {
      return execute(param);
    } catch (e, stackTrace) {
      return Left(InternalAppFailure(e, stackTrace));
    }
  }
}

abstract class NoParamsStreamUseCase<R> extends StreamUseCase<NoParams?, R> {
  const NoParamsStreamUseCase();

  @override
  Either<Failure, Stream<R>> call([NoParams? param]) => super.call(param);
}

abstract class NoParams {}

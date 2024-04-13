import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final Object? message;

  const Failure([this.message]);

  @override
  List<Object?> get props => [message];
}

class NetworkFailure extends Failure {
  const NetworkFailure(super.message);
}

class InternalAppFailure extends Failure {
  final StackTrace? stackTrace;

  const InternalAppFailure(super.message, [this.stackTrace]);

  @override
  List<Object?> get props => [message, stackTrace];
}

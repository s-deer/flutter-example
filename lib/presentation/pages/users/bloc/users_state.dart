part of 'users_bloc.dart';

class UsersState extends Equatable {
  const UsersState({
    this.loading = false,
    this.users = const [],
    this.failure,
  });

  final bool loading;
  final List<User> users;
  final Failure? failure;

  @override
  List<Object?> get props => [loading, users, failure];
}

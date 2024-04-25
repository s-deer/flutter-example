part of 'users_bloc.dart';

class UsersState extends Equatable {
  const UsersState({
    this.loading = false,
    this.users = const [],
    this.filteredUsers = const [],
    this.failure,
  });

  final bool loading;
  final List<User> users;
  final List<User> filteredUsers;
  final Failure? failure;

  @override
  List<Object?> get props => [
        loading,
        users,
        filteredUsers,
        failure,
      ];

  UsersState copyWith({
    bool? loading,
    List<User>? users,
    List<User>? filteredUsers,
    Failure? failure,
  }) {
    return UsersState(
      loading: loading ?? this.loading,
      users: users ?? this.users,
      filteredUsers: filteredUsers ?? this.filteredUsers,
      failure: failure ?? this.failure,
    );
  }
}

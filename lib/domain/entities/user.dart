import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String firstName;
  final String lastName;
  final String username;
  final String email;

  const User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
  });

  @override
  List<Object> get props {
    return [
      id,
      firstName,
      lastName,
      username,
      email,
    ];
  }
}

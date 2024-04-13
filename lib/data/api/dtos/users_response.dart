import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'user_dto.dart';

part 'users_response.g.dart';

@JsonSerializable()
class UsersResponse extends Equatable {
  const UsersResponse({
    required this.users,
  });

  factory UsersResponse.fromJson(Map<String, dynamic> data) =>
      _$UsersResponseFromJson(data);

  final List<UserDto> users;

  @override
  List<Object?> get props => [
        users,
      ];

  Map<String, dynamic> toJson() => _$UsersResponseToJson(this);
}

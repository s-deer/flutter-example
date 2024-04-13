import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDto extends Equatable {
  const UserDto({
    required this.id,
    required this.username,
    required this.email,
    required this.firstName,
    required this.lastName,
  });

  factory UserDto.fromJson(Map<String, dynamic> data) => _$UserDtoFromJson(data);

  final int id;

  final String username;

  final String email;

  @JsonKey(name: 'first_name')
  final String firstName;

  @JsonKey(name: 'last_name')
  final String lastName;

  @override
  List<Object?> get props => [
        id,
        username,
        email,
        firstName,
        lastName,
      ];

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);
}

import 'package:flutter/material.dart';

import 'package:example/domain/domain.dart';

class UserListTile extends StatelessWidget {
  final User user;
  final VoidCallback? onTap;

  const UserListTile({
    required this.user,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: const Icon(Icons.person),
      title: Text(user.fullName),
      subtitle: Text(user.email),
    );
  }
}

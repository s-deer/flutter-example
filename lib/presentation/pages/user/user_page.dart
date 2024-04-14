import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:example/domain/domain.dart';

import 'widgets/user_avatar.dart';

@RoutePage()
class UserPage extends StatelessWidget {
  final User user;
  const UserPage({
    required this.user,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 25),
            const UserAvatar(),
            const SizedBox(height: 10),
            Text(
              user.fullName,
              style: theme.textTheme.headlineMedium,
            ),
            const SizedBox(height: 5),
            Text(
              user.email,
              style: theme.textTheme.labelLarge,
            ),
            const SizedBox(height: 5),
            Text(
              user.username,
              style: theme.textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}

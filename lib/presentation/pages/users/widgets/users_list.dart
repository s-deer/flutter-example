import 'package:example/domain/domain.dart';
import 'package:example/presentation/pages/users/widgets/user_list_tile.dart';
import 'package:flutter/widgets.dart';

class UsersList extends StatelessWidget {
  final List<User> users;

  const UsersList({
    required this.users,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: users.length,
      itemBuilder: (BuildContext context, int index) {
        final user = users[index];

        return UserListTile(user: user);
      },
    );
  }
}

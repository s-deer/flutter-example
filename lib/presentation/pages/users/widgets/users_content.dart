import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/users_bloc.dart';
import 'users_list.dart';

class UsersContent extends StatelessWidget {
  const UsersContent({super.key});

  @override
  Widget build(BuildContext context) {
    final isLoading = context.select((UsersBloc bloc) => bloc.state.loading);

    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    final failure = context.select((UsersBloc bloc) => bloc.state.failure);

    if (failure != null) {
      return Center(
        child: Text('Failed to load users: ${failure.message}'),
      );
    }

    final isEmpty = context.select((UsersBloc bloc) => bloc.state.users.isEmpty);

    if (isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Users list is empty'),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.read<UsersBloc>().add(FetchUsersEvent());
              },
              child: const Text('Fetch users'),
            ),
          ],
        ),
      );
    }

    final users = context.select((UsersBloc bloc) => bloc.state.filteredUsers);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            onChanged: (String value) {
              context.read<UsersBloc>().add(SearchUsersEvent(value));
            },
            decoration: const InputDecoration(hintText: 'Search'),
          ),
        ),
        Expanded(
          child: UsersList(users: users),
        ),
      ],
    );
  }
}

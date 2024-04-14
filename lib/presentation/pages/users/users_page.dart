import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import 'package:example/injectable/injectable.dart';

import 'bloc/users_bloc.dart';
import 'widgets/users_content.dart';

@RoutePage()
class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UsersBloc>(
      create: (BuildContext context) => getIt<UsersBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Users'),
        ),
        body: const UsersContent(),
      ),
    );
  }
}

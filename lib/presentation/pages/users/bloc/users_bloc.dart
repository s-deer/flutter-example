import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:example/core/core.dart';
import 'package:example/domain/domain.dart';
import 'package:injectable/injectable.dart';

part 'users_event.dart';
part 'users_state.dart';

@Injectable()
class UsersBloc extends Bloc<UsersEvent, UsersState> {
  final GetUsersUsecase _getUsersUsecase;

  UsersBloc(this._getUsersUsecase) : super(const UsersState()) {
    on<FetchUsersEvent>(_onFetchUsersEvent);
  }

  FutureOr<void> _onFetchUsersEvent(
    FetchUsersEvent event,
    Emitter<UsersState> emit,
  ) async {
    emit(UsersState(
      users: state.users,
      loading: true,
      failure: null,
    ));

    final result = await _getUsersUsecase();

    final newState = result.fold(
      (Failure failure) {
        return UsersState(failure: failure, loading: false);
      },
      (List<User> users) {
        return UsersState(
          failure: null,
          loading: false,
          users: users,
        );
      },
    );

    emit(newState);
  }
}

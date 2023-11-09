import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

// Event
abstract class AuthenticationEvent {}

class CheckUserEvent extends AuthenticationEvent {}

// State
@immutable
abstract class AuthenticationState {}

class InitialState extends AuthenticationState {}

class AuthenticatedState extends AuthenticationState {}

class UnauthenticatedState extends AuthenticationState {}

// BLoC
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(InitialState());

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is CheckUserEvent) {
      // Add your authentication logic here
      // For now, let's assume the user is unauthenticated
      yield UnauthenticatedState();
    }
  }
}

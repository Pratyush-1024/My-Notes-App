import 'package:flutter/foundation.dart';
import 'package:mynotes/services/auth/auth_user.dart';

@immutable
abstract class AuthState {
  const AuthState();
}

class AuthStateLoading extends AuthState {
  const AuthStateLoading();
}

class AuthStateLoggedIn extends AuthState {
  final AuthUser user;

  const AuthStateLoggedIn({required this.user});
}

class AuthStateLogInFailure extends AuthState {
  final Exception exception;

  const AuthStateLogInFailure({required this.exception});
}

class AuthStateNeedsVerification extends AuthState {
  const AuthStateNeedsVerification();
}

class AuthStateLoggedOut extends AuthState {
  const AuthStateLoggedOut();
}

class AuthStateLogOutFailure extends AuthState {
  final Exception exception;

  const AuthStateLogOutFailure({required this.exception});
}

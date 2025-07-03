part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

// ignore: camel_case_types
final class authSuccess extends AuthState {
  final String message;

  authSuccess(this.message);
}

final class AuthFailure extends AuthState {
  final String message;

  AuthFailure(this.message);
}

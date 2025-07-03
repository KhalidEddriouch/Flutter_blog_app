import 'package:blog_app/core/error/faillures.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
  // ignore: non_constant_identifier_names
  Future<Either<Faillure, String>> SingUpWithEmailPassword({
    required String email,
    required String password,
    required String name,
  });
  // ignore: non_constant_identifier_names
  Future<Either<Faillure, String>> SignInWithEmailPassword({
    required String email,
    required String password,
  });
}
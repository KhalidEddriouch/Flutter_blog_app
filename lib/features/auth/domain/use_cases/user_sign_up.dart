import 'package:blog_app/core/error/faillures.dart';
import 'package:blog_app/core/use_case/UseCase.dart';
import 'package:blog_app/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class UserSignUp implements UseCase<String , UserSignUpParams> {
  final AuthRepository  authRepository;
  const UserSignUp(this.authRepository);
  @override
  Future<Either<Faillure, String>> call(UserSignUpParams params) async {
    return await authRepository.SingUpWithEmailPassword(
      email: params.email,
      password: params.password,
      name: params.name,
    );
  }

}

class UserSignUpParams {
  final String email;
  final String password;
  final String name;

  UserSignUpParams({
    required this.email,
    required this.password,
    required this.name,
  });
}
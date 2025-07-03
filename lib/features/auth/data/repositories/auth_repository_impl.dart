import 'package:blog_app/core/error/faillures.dart';
import 'package:blog_app/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:blog_app/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;
  const AuthRepositoryImpl(this.authRemoteDataSource);
  @override
  Future<Either<Faillure, String>> SignInWithEmailPassword({required String email, required String password}) {
    // TODO: implement SignInWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Faillure, String>> SingUpWithEmailPassword({required String email, required String password, required String name}) async {
    try{
      final userId = await authRemoteDataSource.signUpWithEmailAndPassword(
        email: email,
        password: password,
        name: name,
      );
      return Right(userId);
    }catch(e){
      return Left(Faillure('Sign up failed: $e'));
    }
  }
  
}
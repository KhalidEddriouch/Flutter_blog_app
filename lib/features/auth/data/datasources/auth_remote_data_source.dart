import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AuthRemoteDataSource {
  Future<String> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<String> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  });
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final SupabaseClient supabaseClient;
  AuthRemoteDataSourceImpl(this.supabaseClient);
  
  @override
  Future<String> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    // Implement the actual API call here
    throw UnimplementedError();
  }

  @override
  Future<String> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try{
      final response = await supabaseClient.auth.signUp(
        password: password,
        email: email,
        data: {
          'name': name,
        },  
      );
      if(response.user == null){
        throw Exception('User not found');
      }
      return response.user!.id;
    } catch(e) {
      throw Exception('Sign up failed: $e');
    }
  }
}
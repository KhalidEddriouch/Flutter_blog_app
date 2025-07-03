import 'package:blog_app/core/error/faillures.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class UseCase<SuccessType, Params> {
  Future<Either<Faillure, SuccessType>> call(Params params);
}
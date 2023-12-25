import 'package:dartz/dartz.dart';
import 'package:hora_marcada/core/errors/failure.dart';
import 'package:hora_marcada/core/features/login/domain/entities/user_entity.dart';

abstract class UserLogin {
  Future<Either<Failure, Usuario>> call(String email, String senha);
}

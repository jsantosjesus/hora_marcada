import 'package:dartz/dartz.dart';
import 'package:hora_marcada/core/errors/failure.dart';
import 'package:hora_marcada/core/features/login/domain/entities/user_entity.dart';
import 'package:hora_marcada/core/features/login/domain/repository/user_login_repository.dart';
import 'package:hora_marcada/core/features/login/domain/usecases/user_login.dart';

class UserLoginWithEmailImpl implements UserLogin {
  final UserLoginRepository repository;

  UserLoginWithEmailImpl(this.repository);
  @override
  Future<Either<Failure, Usuario>> call(String email, String senha) async {
    return repository.login(email, senha);
  }
}

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hora_marcada/core/errors/failure.dart';
import 'package:hora_marcada/core/features/login/domain/entities/user_entity.dart';
import 'package:hora_marcada/core/features/login/domain/repository/user_login_repository.dart';
import 'package:hora_marcada/core/features/login/infra/datasources/user_login_datasource.dart';

class UserLoginRepositoryImpl implements UserLoginRepository {
  final UserLoginDatasource datasource;

  UserLoginRepositoryImpl({required this.datasource});
  @override
  Future<Either<Failure, Usuario>> login(String email, String senha) async {
    try {
      final result = await datasource.getUser(email, senha);
      return Right(result);
    } on FirebaseAuthException catch (e) {
      return Left(e.message as Failure);
    } catch (e) {
      return Left(FirebaseAuthException as Failure);
    }
  }
}

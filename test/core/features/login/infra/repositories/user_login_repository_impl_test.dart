import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hora_marcada/core/features/login/domain/errors/loginErrors.dart';
import 'package:hora_marcada/core/features/login/infra/datasources/user_login_datasource.dart';
import 'package:hora_marcada/core/features/login/infra/models/user_login_model.dart';
import 'package:hora_marcada/core/features/login/infra/repositories/user_login_repository_impl.dart';
import 'package:mocktail/mocktail.dart';

class UserLoginDatasourceMock extends Mock implements UserLoginDatasource {}

void main() {
  final datasource = UserLoginDatasourceMock();
  final repository = UserLoginRepositoryImpl(datasource: datasource);

  test('deve retornar um usuario model', () async {
    //Arrange
    when(() => datasource.getUser(any(), any())).thenAnswer((_) async =>
        const UserLoginModel(uid: 'uid', nome: 'nome', email: 'email'));

    //Act
    final result = await repository.login('email', 'senha');

    //Assert
    expect(result.fold((l) => l, (r) => r), isA<UserLoginModel>());
  });

  test('deve retornar um LoginError se houver um FirebaseAuthException',
      () async {
    //Arrange
    when(() => datasource.getUser(any(), any()))
        .thenThrow(FirebaseAuthException(code: 'code'));

    //Act
    final result = await repository.login('email', 'senha');

    //Assert
    expect(result.fold((l) => l, (r) => r), isA<LoginError>());
  });

  test('deve retornar um LoginError se houver qualquer outro erro', () async {
    //Arrange
    when(() => datasource.getUser(any(), any())).thenThrow(Exception());

    //Act
    final result = await repository.login('email', 'senha');

    //Assert
    expect(result.fold((l) => l, (r) => r), isA<LoginError>());
  });
}

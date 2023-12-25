import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hora_marcada/core/features/login/domain/entities/user_entity.dart';
import 'package:hora_marcada/core/features/login/domain/repository/user_login_repository.dart';
import 'package:hora_marcada/core/features/login/domain/usecases/user_login.dart';
import 'package:hora_marcada/core/features/login/domain/usecases/user_login_with_email_impl.dart';
import 'package:mocktail/mocktail.dart';

class UserLoginRepositoryMock extends Mock implements UserLoginRepository {}

void main() {
  late UserLogin usecase;
  late UserLoginRepositoryMock repository;

  setUp(() {
    repository = UserLoginRepositoryMock();
    usecase = UserLoginWithEmailImpl(repository);
  });

  test('deve retornar um usuario', () async {
    // Arrange
    when(() => repository.login(any(), any()))
        .thenAnswer((_) async => const Right(Usuario()));

    // Act
    final result = await usecase('email', 'senha');

    // Assert
    expect(result.fold(id, id), isA<Usuario>());
  });
}

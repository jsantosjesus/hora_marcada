import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hora_marcada/core/features/login/domain/entities/user_entity.dart';
import 'package:hora_marcada/core/features/login/external/datasources/firebase_login.dart';
import 'package:mocktail/mocktail.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockUser extends Mock implements User {}

class MockUserCredential extends Mock implements UserCredential {}

void main() {
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  });
  final firebaseAuth = MockFirebaseAuth();
  final datasource = FirebaseLogin(firebaseAuth);
  final userCredential = MockUserCredential();

  when(() => firebaseAuth.signInWithEmailAndPassword(
      email: 'email',
      password: 'senha')).thenAnswer((_) => Future.value(userCredential));

  test('deve retornar um usuario', () async {
    final result = await datasource.getUser('email', 'senha');
    expect(result, isA<Usuario>());
  });
}

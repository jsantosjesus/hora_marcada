import 'package:firebase_auth/firebase_auth.dart';
import 'package:hora_marcada/core/features/login/external/datasources/firebase_login.dart';
import 'package:mocktail/mocktail.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockUser extends Mock implements User {}

void main() {
  final firebaseAuth = MockFirebaseAuth();
  final usuario = MockUser();
  final datasource = FirebaseLogin();

  when(() async => firebaseAuth.signInWithEmailAndPassword(
          email: any(), password: any()))
      .thenAnswer((_) => Future.value(usuario as UserCredential));
}

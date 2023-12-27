import 'package:firebase_auth/firebase_auth.dart';
import 'package:hora_marcada/core/features/login/domain/entities/user_entity.dart';
import 'package:hora_marcada/core/features/login/domain/errors/loginErrors.dart';
import 'package:hora_marcada/core/features/login/infra/datasources/user_login_datasource.dart';
import 'package:hora_marcada/core/features/login/infra/models/user_login_model.dart';

class FirebaseLogin implements UserLoginDatasource {
  @override
  Future<Usuario> getUser(String email, String senha) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: senha);
      User? user = FirebaseAuth.instance.currentUser;
      Usuario meuUsuario;
      if (user != null) {
        meuUsuario = UserLoginModel.fromFirebaseUser(user);
      } else {
        throw LoginError('erro de firebase');
      }
      return meuUsuario;
    } catch (e) {
      throw LoginError('erro de firebase');
    }
  }
}

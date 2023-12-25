import 'package:hora_marcada/core/features/login/domain/entities/user_entity.dart';

abstract class UserLoginDatasource {
  Future<Usuario> getUser(String email, String senha);
}

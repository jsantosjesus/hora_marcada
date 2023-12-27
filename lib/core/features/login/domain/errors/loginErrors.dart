import 'package:hora_marcada/core/errors/failure.dart';

class LoginError implements Failure {
  final String? menssage;

  LoginError(this.menssage);
}

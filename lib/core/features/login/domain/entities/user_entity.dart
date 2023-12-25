import 'package:equatable/equatable.dart';

class Usuario extends Equatable {
  final String? uid;
  final String? nome;
  final String? email;

  const Usuario({this.uid, this.nome, this.email});

  @override
  List<Object?> get props => [
        uid,
        nome,
        email,
      ];
}

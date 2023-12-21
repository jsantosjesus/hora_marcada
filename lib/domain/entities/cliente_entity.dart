import 'package:equatable/equatable.dart';

class ClienteEntity extends Equatable {
  final String? nome;
  final String? contato;

  const ClienteEntity({this.nome, this.contato});

  @override
  List<Object?> get props => [
        nome,
        contato,
      ];
}

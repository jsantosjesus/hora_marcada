import 'package:equatable/equatable.dart';

class SalaoEntity extends Equatable {
  final String? nome;
  final String? descricao;
  final Map<String, Map<String, String>>? diasDeFuncionamento;
  final Map<String, String>? servicos;

  const SalaoEntity(
      {this.nome, this.descricao, this.diasDeFuncionamento, this.servicos});

  @override
  List<Object?> get props => [
        nome,
        descricao,
        diasDeFuncionamento,
        servicos,
      ];
}

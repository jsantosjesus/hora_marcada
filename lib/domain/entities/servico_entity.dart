import 'package:equatable/equatable.dart';

class ServicoEntity extends Equatable {
  final String? nome;
  final String? descricao;
  final double? preco;
  final double? custo;
  final int? tempo;
  final String? salaoId;

  const ServicoEntity(
      {this.nome,
      this.descricao,
      this.preco,
      this.custo,
      this.tempo,
      this.salaoId});

  @override
  List<Object?> get props => [nome, descricao, preco, custo, tempo, salaoId];
}

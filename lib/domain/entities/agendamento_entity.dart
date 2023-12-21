import 'package:equatable/equatable.dart';

class AgendamentoEntity extends Equatable {
  final DateTime? hora;
  final String? clienteId;
  final String? servicoId;
  final int? tempo;
  final String? observacao;
  final bool? confirmado;

  const AgendamentoEntity(
      {required this.hora,
      required this.clienteId,
      required this.servicoId,
      required this.tempo,
      required this.observacao,
      required this.confirmado});

  @override
  List<Object?> get props => [
        hora,
        clienteId,
        servicoId,
        tempo,
        observacao,
        confirmado,
      ];
}

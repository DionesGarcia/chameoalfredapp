import '../database.dart';

class GaronsAtendimentoTable extends SupabaseTable<GaronsAtendimentoRow> {
  @override
  String get tableName => 'Garçons Atendimento';

  @override
  GaronsAtendimentoRow createRow(Map<String, dynamic> data) =>
      GaronsAtendimentoRow(data);
}

class GaronsAtendimentoRow extends SupabaseDataRow {
  GaronsAtendimentoRow(super.data);

  @override
  SupabaseTable get table => GaronsAtendimentoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get restauranteId => getField<int>('restaurante_id');
  set restauranteId(int? value) => setField<int>('restaurante_id', value);

  int? get userA => getField<int>('userA');
  set userA(int? value) => setField<int>('userA', value);

  int? get userBrecebe => getField<int>('userB(recebe)');
  set userBrecebe(int? value) => setField<int>('userB(recebe)', value);

  String? get mesa => getField<String>('mesa');
  set mesa(String? value) => setField<String>('mesa', value);

  String? get mensagem => getField<String>('mensagem');
  set mensagem(String? value) => setField<String>('mensagem', value);

  DateTime? get horachamou => getField<DateTime>('horachamou');
  set horachamou(DateTime? value) => setField<DateTime>('horachamou', value);

  bool? get respondeu => getField<bool>('respondeu');
  set respondeu(bool? value) => setField<bool>('respondeu', value);

  DateTime? get horaRespondeu => getField<DateTime>('horaRespondeu');
  set horaRespondeu(DateTime? value) =>
      setField<DateTime>('horaRespondeu', value);

  double? get valorMesa => getField<double>('valorMesa');
  set valorMesa(double? value) => setField<double>('valorMesa', value);
}

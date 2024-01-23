import '../database.dart';

class PratosTable extends SupabaseTable<PratosRow> {
  @override
  String get tableName => 'Pratos';

  @override
  PratosRow createRow(Map<String, dynamic> data) => PratosRow(data);
}

class PratosRow extends SupabaseDataRow {
  PratosRow(super.data);

  @override
  SupabaseTable get table => PratosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get categoriaId => getField<int>('categoria_id');
  set categoriaId(int? value) => setField<int>('categoria_id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  bool? get aceitaMeia => getField<bool>('aceitaMeia');
  set aceitaMeia(bool? value) => setField<bool>('aceitaMeia', value);

  double? get valorMeia => getField<double>('valorMeia');
  set valorMeia(double? value) => setField<double>('valorMeia', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  bool? get pedidoFinalizado => getField<bool>('pedidoFinalizado');
  set pedidoFinalizado(bool? value) =>
      setField<bool>('pedidoFinalizado', value);

  String? get imagemPrato => getField<String>('imagemPrato');
  set imagemPrato(String? value) => setField<String>('imagemPrato', value);

  int? get restauranteId => getField<int>('restaurante_id');
  set restauranteId(int? value) => setField<int>('restaurante_id', value);

  bool? get pizza => getField<bool>('Pizza');
  set pizza(bool? value) => setField<bool>('Pizza', value);

  double? get pizza1 => getField<double>('pizza1');
  set pizza1(double? value) => setField<double>('pizza1', value);

  double? get pizza2 => getField<double>('pizza2');
  set pizza2(double? value) => setField<double>('pizza2', value);

  double? get pizza3 => getField<double>('pizza3');
  set pizza3(double? value) => setField<double>('pizza3', value);

  bool? get rodizio => getField<bool>('rodizio');
  set rodizio(bool? value) => setField<bool>('rodizio', value);
}

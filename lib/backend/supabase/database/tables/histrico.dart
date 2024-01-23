import '../database.dart';

class HistricoTable extends SupabaseTable<HistricoRow> {
  @override
  String get tableName => 'Histórico';

  @override
  HistricoRow createRow(Map<String, dynamic> data) => HistricoRow(data);
}

class HistricoRow extends SupabaseDataRow {
  HistricoRow(super.data);

  @override
  SupabaseTable get table => HistricoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get restauranteId => getField<int>('restaurante_id');
  set restauranteId(int? value) => setField<int>('restaurante_id', value);

  String? get mesa => getField<String>('mesa');
  set mesa(String? value) => setField<String>('mesa', value);

  String? get pedido => getField<String>('pedido');
  set pedido(String? value) => setField<String>('pedido', value);

  String? get acao => getField<String>('ação');
  set acao(String? value) => setField<String>('ação', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  String? get filtro => getField<String>('filtro');
  set filtro(String? value) => setField<String>('filtro', value);

  String? get usuario => getField<String>('Usuario');
  set usuario(String? value) => setField<String>('Usuario', value);
}

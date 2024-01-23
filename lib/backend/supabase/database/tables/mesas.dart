import '../database.dart';

class MesasTable extends SupabaseTable<MesasRow> {
  @override
  String get tableName => 'Mesas';

  @override
  MesasRow createRow(Map<String, dynamic> data) => MesasRow(data);
}

class MesasRow extends SupabaseDataRow {
  MesasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MesasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get restauranteId => getField<int>('restaurante_id');
  set restauranteId(int? value) => setField<int>('restaurante_id', value);

  List<String> get mesa => getListField<String>('mesa');
  set mesa(List<String>? value) => setListField<String>('mesa', value);

  bool? get cadastro => getField<bool>('cadastro');
  set cadastro(bool? value) => setField<bool>('cadastro', value);
}

import '../database.dart';

class GaronTable extends SupabaseTable<GaronRow> {
  @override
  String get tableName => 'Garçon';

  @override
  GaronRow createRow(Map<String, dynamic> data) => GaronRow(data);
}

class GaronRow extends SupabaseDataRow {
  GaronRow(super.data);

  @override
  SupabaseTable get table => GaronTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get restauranteId => getField<int>('restaurante_id');
  set restauranteId(int? value) => setField<int>('restaurante_id', value);
}

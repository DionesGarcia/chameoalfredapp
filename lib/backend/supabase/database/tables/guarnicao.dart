import '../database.dart';

class GuarnicaoTable extends SupabaseTable<GuarnicaoRow> {
  @override
  String get tableName => 'Guarnicao';

  @override
  GuarnicaoRow createRow(Map<String, dynamic> data) => GuarnicaoRow(data);
}

class GuarnicaoRow extends SupabaseDataRow {
  GuarnicaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GuarnicaoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get pratoId => getField<int>('prato_id');
  set pratoId(int? value) => setField<int>('prato_id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  String? get peso => getField<String>('peso');
  set peso(String? value) => setField<String>('peso', value);

  bool? get adicional => getField<bool>('adicional');
  set adicional(bool? value) => setField<bool>('adicional', value);
}

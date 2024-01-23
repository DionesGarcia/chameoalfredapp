import '../database.dart';

class CategoriaTable extends SupabaseTable<CategoriaRow> {
  @override
  String get tableName => 'Categoria';

  @override
  CategoriaRow createRow(Map<String, dynamic> data) => CategoriaRow(data);
}

class CategoriaRow extends SupabaseDataRow {
  CategoriaRow(super.data);

  @override
  SupabaseTable get table => CategoriaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  bool? get pizza => getField<bool>('pizza');
  set pizza(bool? value) => setField<bool>('pizza', value);

  int? get restauranteId => getField<int>('restaurante_id');
  set restauranteId(int? value) => setField<int>('restaurante_id', value);

  String? get imagem => getField<String>('imagem');
  set imagem(String? value) => setField<String>('imagem', value);

  bool? get rodizio => getField<bool>('rodizio');
  set rodizio(bool? value) => setField<bool>('rodizio', value);

  double? get valorRodizio => getField<double>('valor rodizio');
  set valorRodizio(double? value) => setField<double>('valor rodizio', value);

  double? get valorRodizioCrianca => getField<double>('valor rodizio criança');
  set valorRodizioCrianca(double? value) =>
      setField<double>('valor rodizio criança', value);
}

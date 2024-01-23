import '../database.dart';

class AssinaturasTable extends SupabaseTable<AssinaturasRow> {
  @override
  String get tableName => 'Assinaturas';

  @override
  AssinaturasRow createRow(Map<String, dynamic> data) => AssinaturasRow(data);
}

class AssinaturasRow extends SupabaseDataRow {
  AssinaturasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AssinaturasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  double? get valorAssinatura => getField<double>('valorAssinatura');
  set valorAssinatura(double? value) =>
      setField<double>('valorAssinatura', value);

  int? get restauranteId => getField<int>('restaurante_id');
  set restauranteId(int? value) => setField<int>('restaurante_id', value);

  String? get numeroCartao => getField<String>('numeroCartão');
  set numeroCartao(String? value) => setField<String>('numeroCartão', value);

  bool? get statusAssinatura => getField<bool>('statusAssinatura');
  set statusAssinatura(bool? value) =>
      setField<bool>('statusAssinatura', value);

  DateTime? get dataAssinatura => getField<DateTime>('dataAssinatura');
  set dataAssinatura(DateTime? value) =>
      setField<DateTime>('dataAssinatura', value);

  DateTime? get vencimentoAssinatura =>
      getField<DateTime>('vencimentoAssinatura');
  set vencimentoAssinatura(DateTime? value) =>
      setField<DateTime>('vencimentoAssinatura', value);

  String? get dataExp => getField<String>('dataExp');
  set dataExp(String? value) => setField<String>('dataExp', value);

  String? get cvv => getField<String>('cvv');
  set cvv(String? value) => setField<String>('cvv', value);

  String? get nomeCartao => getField<String>('nomeCartão');
  set nomeCartao(String? value) => setField<String>('nomeCartão', value);

  String? get idUser => getField<String>('id_User');
  set idUser(String? value) => setField<String>('id_User', value);

  String? get ciclo => getField<String>('ciclo');
  set ciclo(String? value) => setField<String>('ciclo', value);

  String? get tipopgto => getField<String>('tipopgto');
  set tipopgto(String? value) => setField<String>('tipopgto', value);
}

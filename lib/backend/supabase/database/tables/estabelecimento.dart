import '../database.dart';

class EstabelecimentoTable extends SupabaseTable<EstabelecimentoRow> {
  @override
  String get tableName => 'Estabelecimento';

  @override
  EstabelecimentoRow createRow(Map<String, dynamic> data) =>
      EstabelecimentoRow(data);
}

class EstabelecimentoRow extends SupabaseDataRow {
  EstabelecimentoRow(super.data);

  @override
  SupabaseTable get table => EstabelecimentoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get rua => getField<String>('rua');
  set rua(String? value) => setField<String>('rua', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  String? get numero => getField<String>('numero');
  set numero(String? value) => setField<String>('numero', value);

  String? get tel => getField<String>('tel');
  set tel(String? value) => setField<String>('tel', value);

  String? get cel => getField<String>('cel');
  set cel(String? value) => setField<String>('cel', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get instagram => getField<String>('instagram');
  set instagram(String? value) => setField<String>('instagram', value);

  String? get tiktok => getField<String>('tiktok');
  set tiktok(String? value) => setField<String>('tiktok', value);

  double? get txEmbalagem => getField<double>('txEmbalagem');
  set txEmbalagem(double? value) => setField<double>('txEmbalagem', value);

  bool? get pagaAPP => getField<bool>('pagaAPP');
  set pagaAPP(bool? value) => setField<bool>('pagaAPP', value);

  String? get banner1 => getField<String>('banner1');
  set banner1(String? value) => setField<String>('banner1', value);

  String? get banner2 => getField<String>('banner2');
  set banner2(String? value) => setField<String>('banner2', value);

  String? get banner3 => getField<String>('banner3');
  set banner3(String? value) => setField<String>('banner3', value);

  bool? get cadCompleto => getField<bool>('cadCompleto');
  set cadCompleto(bool? value) => setField<bool>('cadCompleto', value);

  String? get logo => getField<String>('logo');
  set logo(String? value) => setField<String>('logo', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cnpj => getField<String>('cnpj');
  set cnpj(String? value) => setField<String>('cnpj', value);

  bool? get shopping => getField<bool>('Shopping');
  set shopping(bool? value) => setField<bool>('Shopping', value);

  int? get numeroPedidoatual => getField<int>('numeroPedidoatual');
  set numeroPedidoatual(int? value) =>
      setField<int>('numeroPedidoatual', value);

  double? get cover => getField<double>('cover');
  set cover(double? value) => setField<double>('cover', value);

  double? get txGarcom => getField<double>('txGarçom');
  set txGarcom(double? value) => setField<double>('txGarçom', value);

  String? get apiKey => getField<String>('apiKey');
  set apiKey(String? value) => setField<String>('apiKey', value);

  String? get locationEst => getField<String>('locationEst');
  set locationEst(String? value) => setField<String>('locationEst', value);
}

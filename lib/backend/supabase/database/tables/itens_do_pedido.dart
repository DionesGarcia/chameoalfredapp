import '../database.dart';

class ItensDoPedidoTable extends SupabaseTable<ItensDoPedidoRow> {
  @override
  String get tableName => 'Itens do Pedido';

  @override
  ItensDoPedidoRow createRow(Map<String, dynamic> data) =>
      ItensDoPedidoRow(data);
}

class ItensDoPedidoRow extends SupabaseDataRow {
  ItensDoPedidoRow(super.data);

  @override
  SupabaseTable get table => ItensDoPedidoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get mesa => getField<String>('mesa');
  set mesa(String? value) => setField<String>('mesa', value);

  int? get pratoId => getField<int>('prato_id');
  set pratoId(int? value) => setField<int>('prato_id', value);

  String? get garcom => getField<String>('garçom');
  set garcom(String? value) => setField<String>('garçom', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  List<String> get adicionais => getListField<String>('adicionais');
  set adicionais(List<String>? value) =>
      setListField<String>('adicionais', value);

  bool? get confirmado => getField<bool>('confirmado');
  set confirmado(bool? value) => setField<bool>('confirmado', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  int? get cliente => getField<int>('cliente');
  set cliente(int? value) => setField<int>('cliente', value);

  int? get categoriaID => getField<int>('categoria_ID');
  set categoriaID(int? value) => setField<int>('categoria_ID', value);

  String? get categoria => getField<String>('categoria');
  set categoria(String? value) => setField<String>('categoria', value);

  String? get prato => getField<String>('prato');
  set prato(String? value) => setField<String>('prato', value);

  String? get desc => getField<String>('desc');
  set desc(String? value) => setField<String>('desc', value);

  String? get imagemCat => getField<String>('imagemCat');
  set imagemCat(String? value) => setField<String>('imagemCat', value);

  int? get pedidoId => getField<int>('pedido_id');
  set pedidoId(int? value) => setField<int>('pedido_id', value);

  String? get pizzaCombinada => getField<String>('pizzaCombinada');
  set pizzaCombinada(String? value) =>
      setField<String>('pizzaCombinada', value);

  bool? get field12 => getField<bool>('1/2');
  set field12(bool? value) => setField<bool>('1/2', value);

  String? get qtd => getField<String>('qtd');
  set qtd(String? value) => setField<String>('qtd', value);
}

import '../database.dart';

class PedidosTable extends SupabaseTable<PedidosRow> {
  @override
  String get tableName => 'Pedidos';

  @override
  PedidosRow createRow(Map<String, dynamic> data) => PedidosRow(data);
}

class PedidosRow extends SupabaseDataRow {
  PedidosRow(super.data);

  @override
  SupabaseTable get table => PedidosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get restauranteId => getField<int>('restaurante_id');
  set restauranteId(int? value) => setField<int>('restaurante_id', value);

  int? get cliente => getField<int>('cliente');
  set cliente(int? value) => setField<int>('cliente', value);

  double? get total => getField<double>('total');
  set total(double? value) => setField<double>('total', value);

  DateTime? get horaPedido => getField<DateTime>('horaPedido');
  set horaPedido(DateTime? value) => setField<DateTime>('horaPedido', value);

  String? get mesa => getField<String>('mesa');
  set mesa(String? value) => setField<String>('mesa', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get pedido => getField<int>('pedido');
  set pedido(int? value) => setField<int>('pedido', value);

  String? get levar => getField<String>('Levar');
  set levar(String? value) => setField<String>('Levar', value);

  DateTime? get horaFimPedido => getField<DateTime>('horaFimPedido');
  set horaFimPedido(DateTime? value) =>
      setField<DateTime>('horaFimPedido', value);

  bool? get pago => getField<bool>('pago');
  set pago(bool? value) => setField<bool>('pago', value);
}

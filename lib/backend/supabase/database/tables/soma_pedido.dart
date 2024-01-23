import '../database.dart';

class SomaPedidoTable extends SupabaseTable<SomaPedidoRow> {
  @override
  String get tableName => 'soma_pedido';

  @override
  SomaPedidoRow createRow(Map<String, dynamic> data) => SomaPedidoRow(data);
}

class SomaPedidoRow extends SupabaseDataRow {
  SomaPedidoRow(super.data);

  @override
  SupabaseTable get table => SomaPedidoTable();

  int? get pedidoId => getField<int>('pedido_id');
  set pedidoId(int? value) => setField<int>('pedido_id', value);

  double? get total => getField<double>('total');
  set total(double? value) => setField<double>('total', value);
}

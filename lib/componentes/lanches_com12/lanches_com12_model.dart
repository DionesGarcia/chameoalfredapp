import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'lanches_com12_widget.dart' show LanchesCom12Widget;
import 'package:flutter/material.dart';

class LanchesCom12Model extends FlutterFlowModel<LanchesCom12Widget> {
  ///  Local state fields for this component.

  String pizzaretorno = '';

  double? valorPizza;

  ///  State fields for stateful widgets in this component.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // Stores action output result for [Backend Call - Insert Row] action in RadioButton widget.
  ItensDoPedidoRow? pedido1sabor;
  // Stores action output result for [Backend Call - Insert Row] action in RadioButton widget.
  ItensDoPedidoRow? pedido2sabor;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get radioButtonValue => radioButtonValueController?.value;
}

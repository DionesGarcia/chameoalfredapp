import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'rodizio_widget.dart' show RodizioWidget;
import 'package:flutter/material.dart';

class RodizioModel extends FlutterFlowModel<RodizioWidget> {
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

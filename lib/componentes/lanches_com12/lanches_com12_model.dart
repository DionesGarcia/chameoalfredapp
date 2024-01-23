import '/backend/supabase/supabase.dart';
import '/componentes/cliente_botonadd_carrinho/cliente_botonadd_carrinho_widget.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'lanches_com12_widget.dart' show LanchesCom12Widget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get radioButtonValue => radioButtonValueController?.value;
}

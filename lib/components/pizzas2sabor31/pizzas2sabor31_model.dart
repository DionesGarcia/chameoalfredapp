import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'pizzas2sabor31_widget.dart' show Pizzas2sabor31Widget;
import 'package:flutter/material.dart';

class Pizzas2sabor31Model extends FlutterFlowModel<Pizzas2sabor31Widget> {
  ///  Local state fields for this component.

  int? sabores;

  String nomes = '';

  bool cad = false;

  String nomes2 = '';

  ///  State fields for stateful widgets in this component.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get radioButtonValue => radioButtonValueController?.value;
}

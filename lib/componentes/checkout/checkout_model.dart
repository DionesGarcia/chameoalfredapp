import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'checkout_widget.dart' show CheckoutWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CheckoutModel extends FlutterFlowModel<CheckoutWidget> {
  ///  Local state fields for this component.

  double? valor;

  bool hide = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextFieldSB widget.
  FocusNode? textFieldSBFocusNode1;
  TextEditingController? textFieldSBController1;
  String? Function(BuildContext, String?)? textFieldSBController1Validator;
  // State field(s) for TextFieldSB widget.
  FocusNode? textFieldSBFocusNode2;
  TextEditingController? textFieldSBController2;
  String? Function(BuildContext, String?)? textFieldSBController2Validator;
  // Stores action output result for [Backend Call - API (Criar Cliente PROFISSIONAL)] action in Button widget.
  ApiCallResponse? apiResultcliente;
  // Stores action output result for [Backend Call - API (Criar pagamento PROFISSIONAL)] action in Button widget.
  ApiCallResponse? apiResultsn0;
  // Stores action output result for [Backend Call - API (Confirmar pagamento PROFISSIONAL)] action in Button widget.
  ApiCallResponse? apiResultdtm;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textFieldSBFocusNode1?.dispose();
    textFieldSBController1?.dispose();

    textFieldSBFocusNode2?.dispose();
    textFieldSBController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

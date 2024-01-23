import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'authlogin_widget.dart' show AuthloginWidget;
import 'package:flutter/material.dart';

class AuthloginModel extends FlutterFlowModel<AuthloginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for passworld widget.
  FocusNode? passworldFocusNode;
  TextEditingController? passworldController;
  late bool passworldVisibility;
  String? Function(BuildContext, String?)? passworldControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - API (Buscar Usuario por ID)] action in Button widget.
  ApiCallResponse? apiResulUSER;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passworldVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    emailTextController?.dispose();

    passworldFocusNode?.dispose();
    passworldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

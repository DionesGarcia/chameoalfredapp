import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'auth_creat_widget.dart' show AuthCreatWidget;
import 'package:flutter/material.dart';

class AuthCreatModel extends FlutterFlowModel<AuthCreatWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for passworld widget.
  FocusNode? passworldFocusNode1;
  TextEditingController? passworldController1;
  late bool passworldVisibility1;
  String? Function(BuildContext, String?)? passworldController1Validator;
  // State field(s) for passworld widget.
  FocusNode? passworldFocusNode2;
  TextEditingController? passworldController2;
  late bool passworldVisibility2;
  String? Function(BuildContext, String?)? passworldController2Validator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  EstabelecimentoRow? restaurantestart;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  UsuariosRow? user1;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passworldVisibility1 = false;
    passworldVisibility2 = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    passworldFocusNode1?.dispose();
    passworldController1?.dispose();

    passworldFocusNode2?.dispose();
    passworldController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

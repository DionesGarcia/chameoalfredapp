import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/componentes/popup_log_erroemail/popup_log_erroemail_widget.dart';
import '/componentes/popup_log_senhanaoconfere/popup_log_senhanaoconfere_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'auth_creat_widget.dart' show AuthCreatWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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

  void initState(BuildContext context) {
    passworldVisibility1 = false;
    passworldVisibility2 = false;
  }

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

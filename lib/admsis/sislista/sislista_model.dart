import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/componentes/drawer_a_d_msis/drawer_a_d_msis_widget.dart';
import '/componentes/editestsis/editestsis_widget.dart';
import '/componentes/headeradmsis/headeradmsis_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'sislista_widget.dart' show SislistaWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SislistaModel extends FlutterFlowModel<SislistaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Buscar Usuario por ID)] action in sislista widget.
  ApiCallResponse? uSERhOME;
  // Stores action output result for [Backend Call - API (Buscar Restaurante por userID)] action in sislista widget.
  ApiCallResponse? restauranteHome;
  // Model for DrawerADMsis component.
  late DrawerADMsisModel drawerADMsisModel;
  // Model for Headeradmsis component.
  late HeaderadmsisModel headeradmsisModel;
  // State field(s) for TextFieldSB widget.
  FocusNode? textFieldSBFocusNode1;
  TextEditingController? textFieldSBController1;
  String? Function(BuildContext, String?)? textFieldSBController1Validator;
  // State field(s) for TextFieldSB widget.
  FocusNode? textFieldSBFocusNode2;
  TextEditingController? textFieldSBController2;
  String? Function(BuildContext, String?)? textFieldSBController2Validator;
  // Stores action output result for [Backend Call - Insert Row] action in Icon widget.
  EstabelecimentoRow? sisrestaurantestart1;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    drawerADMsisModel = createModel(context, () => DrawerADMsisModel());
    headeradmsisModel = createModel(context, () => HeaderadmsisModel());
  }

  void dispose() {
    unfocusNode.dispose();
    drawerADMsisModel.dispose();
    headeradmsisModel.dispose();
    textFieldSBFocusNode1?.dispose();
    textFieldSBController1?.dispose();

    textFieldSBFocusNode2?.dispose();
    textFieldSBController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

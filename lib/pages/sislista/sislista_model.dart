import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/drawer_a_d_msis/drawer_a_d_msis_widget.dart';
import '/components/headeradmsis/headeradmsis_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sislista_widget.dart' show SislistaWidget;
import 'package:flutter/material.dart';

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

  @override
  void initState(BuildContext context) {
    drawerADMsisModel = createModel(context, () => DrawerADMsisModel());
    headeradmsisModel = createModel(context, () => HeaderadmsisModel());
  }

  @override
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

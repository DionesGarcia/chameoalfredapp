import '/backend/api_requests/api_calls.dart';
import '/componentes/drawer_a_d_m/drawer_a_d_m_widget.dart';
import '/componentes/header_empresa/header_empresa_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'e01_menu_widget.dart' show E01MenuWidget;
import 'package:flutter/material.dart';

class E01MenuModel extends FlutterFlowModel<E01MenuWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Buscar Usuario por ID)] action in E01Menu widget.
  ApiCallResponse? uSERhOME;
  // Stores action output result for [Backend Call - API (Buscar Restaurante por userID)] action in E01Menu widget.
  ApiCallResponse? restauranteHome;
  // Model for DrawerADM component.
  late DrawerADMModel drawerADMModel;
  // Model for HeaderEmpresa component.
  late HeaderEmpresaModel headerEmpresaModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    drawerADMModel = createModel(context, () => DrawerADMModel());
    headerEmpresaModel = createModel(context, () => HeaderEmpresaModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    drawerADMModel.dispose();
    headerEmpresaModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

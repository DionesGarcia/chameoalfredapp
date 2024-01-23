import '/backend/supabase/supabase.dart';
import '/components/drawer_user/drawer_user_widget.dart';
import '/components/header_empresa/header_empresa_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cliente1_widget.dart' show Cliente1Widget;
import 'package:flutter/material.dart';

class Cliente1Model extends FlutterFlowModel<Cliente1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Insert Row] action in Cliente1 widget.
  UsuariosRow? user11;
  // Model for DrawerUser component.
  late DrawerUserModel drawerUserModel;
  // Model for HeaderEmpresa component.
  late HeaderEmpresaModel headerEmpresaModel;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  PedidosRow? linhapedido;
  // Stores action output result for [Backend Call - Insert Row] action in Container widget.
  PedidosRow? linhapedidocat;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    drawerUserModel = createModel(context, () => DrawerUserModel());
    headerEmpresaModel = createModel(context, () => HeaderEmpresaModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    drawerUserModel.dispose();
    headerEmpresaModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/componentes/drawer_user/drawer_user_widget.dart';
import '/componentes/header_empresa/header_empresa_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'cliente1_widget.dart' show Cliente1Widget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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

  void initState(BuildContext context) {
    drawerUserModel = createModel(context, () => DrawerUserModel());
    headerEmpresaModel = createModel(context, () => HeaderEmpresaModel());
  }

  void dispose() {
    unfocusNode.dispose();
    drawerUserModel.dispose();
    headerEmpresaModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

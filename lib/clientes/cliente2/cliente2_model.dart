import '/componentes/drawer_user/drawer_user_widget.dart';
import '/componentes/header_empresa/header_empresa_widget.dart';
import '/componentes/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cliente2_widget.dart' show Cliente2Widget;
import 'package:flutter/material.dart';

class Cliente2Model extends FlutterFlowModel<Cliente2Widget> {
  ///  Local state fields for this page.

  String categoria = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for HeaderEmpresa component.
  late HeaderEmpresaModel headerEmpresaModel;
  // Model for DrawerUser component.
  late DrawerUserModel drawerUserModel;
  // Model for navbar component.
  late NavbarModel navbarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    headerEmpresaModel = createModel(context, () => HeaderEmpresaModel());
    drawerUserModel = createModel(context, () => DrawerUserModel());
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerEmpresaModel.dispose();
    drawerUserModel.dispose();
    navbarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

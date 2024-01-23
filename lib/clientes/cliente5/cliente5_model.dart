import '/backend/supabase/supabase.dart';
import '/componentes/drawer_user/drawer_user_widget.dart';
import '/componentes/header_empresa/header_empresa_widget.dart';
import '/componentes/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cliente5_widget.dart' show Cliente5Widget;
import 'dart:async';
import 'package:flutter/material.dart';

class Cliente5Model extends FlutterFlowModel<Cliente5Widget> {
  ///  Local state fields for this page.

  double? valor;

  DateTime? horarioPedido;

  bool hide = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DrawerUser component.
  late DrawerUserModel drawerUserModel;
  // Model for HeaderEmpresa component.
  late HeaderEmpresaModel headerEmpresaModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  Completer<List<PedidosRow>>? requestCompleter;
  // Model for navbar component.
  late NavbarModel navbarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    drawerUserModel = createModel(context, () => DrawerUserModel());
    headerEmpresaModel = createModel(context, () => HeaderEmpresaModel());
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    drawerUserModel.dispose();
    headerEmpresaModel.dispose();
    navbarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}

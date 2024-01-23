import '/backend/supabase/supabase.dart';
import '/components/drawer_a_d_m/drawer_a_d_m_widget.dart';
import '/components/header_empresa/header_empresa_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'gacom_widget.dart' show GacomWidget;
import 'package:flutter/material.dart';

class GacomModel extends FlutterFlowModel<GacomWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DrawerADM component.
  late DrawerADMModel drawerADMModel;
  // Model for HeaderEmpresa component.
  late HeaderEmpresaModel headerEmpresaModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  Completer<List<GaronsAtendimentoRow>>? requestCompleter;

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
    tabBarController?.dispose();
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

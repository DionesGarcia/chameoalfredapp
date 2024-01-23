import '/backend/supabase/supabase.dart';
import '/componentes/drawer_a_d_msis/drawer_a_d_msis_widget.dart';
import '/componentes/headeradmsis/headeradmsis_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'sis_menu_widget.dart' show SisMenuWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SisMenuModel extends FlutterFlowModel<SisMenuWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DrawerADMsis component.
  late DrawerADMsisModel drawerADMsisModel;
  // Stores action output result for [Backend Call - Insert Row] action in Container widget.
  EstabelecimentoRow? sisrestaurantestart;
  // Model for Headeradmsis component.
  late HeaderadmsisModel headeradmsisModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    drawerADMsisModel = createModel(context, () => DrawerADMsisModel());
    headeradmsisModel = createModel(context, () => HeaderadmsisModel());
  }

  void dispose() {
    unfocusNode.dispose();
    drawerADMsisModel.dispose();
    headeradmsisModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

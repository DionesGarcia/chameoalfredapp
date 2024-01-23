import '/backend/supabase/supabase.dart';
import '/componentes/drawer_a_d_m/drawer_a_d_m_widget.dart';
import '/componentes/header_empresa/header_empresa_widget.dart';
import '/componentes/vazio_semitem/vazio_semitem_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'relatorio01_widget.dart' show Relatorio01Widget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Relatorio01Model extends FlutterFlowModel<Relatorio01Widget> {
  ///  Local state fields for this page.

  DateTime? inicio;

  DateTime? fim;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DrawerADM component.
  late DrawerADMModel drawerADMModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  DateTime? datePicked3;
  DateTime? datePicked4;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  DateTime? datePicked5;
  DateTime? datePicked6;
  // Model for HeaderEmpresa component.
  late HeaderEmpresaModel headerEmpresaModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    drawerADMModel = createModel(context, () => DrawerADMModel());
    headerEmpresaModel = createModel(context, () => HeaderEmpresaModel());
  }

  void dispose() {
    unfocusNode.dispose();
    drawerADMModel.dispose();
    tabBarController?.dispose();
    headerEmpresaModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

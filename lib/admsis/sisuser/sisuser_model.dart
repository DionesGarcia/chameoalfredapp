import '/componentes/drawer_a_d_msis/drawer_a_d_msis_widget.dart';
import '/componentes/header_empresa/header_empresa_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'sisuser_widget.dart' show SisuserWidget;
import 'package:flutter/material.dart';

class SisuserModel extends FlutterFlowModel<SisuserWidget> {
  ///  Local state fields for this page.

  String email = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DrawerADMsis component.
  late DrawerADMsisModel drawerADMsisModel;
  // Model for HeaderEmpresa component.
  late HeaderEmpresaModel headerEmpresaModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  // State field(s) for TextFieldeM widget.
  FocusNode? textFieldeMFocusNode;
  TextEditingController? textFieldeMController;
  String? Function(BuildContext, String?)? textFieldeMControllerValidator;
  // State field(s) for TextFieldSEN widget.
  FocusNode? textFieldSENFocusNode1;
  TextEditingController? textFieldSENController1;
  late bool textFieldSENVisibility1;
  String? Function(BuildContext, String?)? textFieldSENController1Validator;
  // State field(s) for TextFieldSEN widget.
  FocusNode? textFieldSENFocusNode2;
  TextEditingController? textFieldSENController2;
  late bool textFieldSENVisibility2;
  String? Function(BuildContext, String?)? textFieldSENController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    drawerADMsisModel = createModel(context, () => DrawerADMsisModel());
    headerEmpresaModel = createModel(context, () => HeaderEmpresaModel());
    textFieldSENVisibility1 = false;
    textFieldSENVisibility2 = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    drawerADMsisModel.dispose();
    headerEmpresaModel.dispose();
    tabBarController?.dispose();
    nomeFocusNode?.dispose();
    nomeController?.dispose();

    textFieldeMFocusNode?.dispose();
    textFieldeMController?.dispose();

    textFieldSENFocusNode1?.dispose();
    textFieldSENController1?.dispose();

    textFieldSENFocusNode2?.dispose();
    textFieldSENController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

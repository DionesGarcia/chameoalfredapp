import '/components/drawer_a_d_msis/drawer_a_d_msis_widget.dart';
import '/components/headeradmsis/headeradmsis_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'financeiro03_widget.dart' show Financeiro03Widget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Financeiro03Model extends FlutterFlowModel<Financeiro03Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DrawerADMsis component.
  late DrawerADMsisModel drawerADMsisModel;
  // Model for Headeradmsis component.
  late HeaderadmsisModel headeradmsisModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  final textFieldMask1 = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  final textFieldMask2 = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;

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
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

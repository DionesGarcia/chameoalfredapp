import '/components/drawer_a_d_msis/drawer_a_d_msis_widget.dart';
import '/components/headeradmsis/headeradmsis_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 's_i_sinanceiroedisedit_widget.dart' show SISinanceiroediseditWidget;
import 'package:flutter/material.dart';

class SISinanceiroediseditModel
    extends FlutterFlowModel<SISinanceiroediseditWidget> {
  ///  Local state fields for this page.

  DateTime? data;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DrawerADMsis component.
  late DrawerADMsisModel drawerADMsisModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  DateTime? datePicked;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for RadioButton11 widget.
  FormFieldController<String>? radioButton11ValueController;
  // State field(s) for RadioButton12 widget.
  FormFieldController<String>? radioButton12ValueController;
  // Model for Headeradmsis component.
  late HeaderadmsisModel headeradmsisModel;

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
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    headeradmsisModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get radioButton11Value => radioButton11ValueController?.value;
  String? get radioButton12Value => radioButton12ValueController?.value;
}

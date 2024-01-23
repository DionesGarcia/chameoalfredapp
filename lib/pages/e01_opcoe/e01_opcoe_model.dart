import '/backend/supabase/supabase.dart';
import '/components/drawer_a_d_m/drawer_a_d_m_widget.dart';
import '/components/header_empresa/header_empresa_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'e01_opcoe_widget.dart' show E01OpcoeWidget;
import 'package:flutter/material.dart';

class E01OpcoeModel extends FlutterFlowModel<E01OpcoeWidget> {
  ///  Local state fields for this page.

  bool sub = false;

  bool cat = false;

  bool meia = false;

  List<String> adicionais = [];
  void addToAdicionais(String item) => adicionais.add(item);
  void removeFromAdicionais(String item) => adicionais.remove(item);
  void removeAtIndexFromAdicionais(int index) => adicionais.removeAt(index);
  void insertAtIndexInAdicionais(int index, String item) =>
      adicionais.insert(index, item);
  void updateAdicionaisAtIndex(int index, Function(String) updateFn) =>
      adicionais[index] = updateFn(adicionais[index]);

  String comidaBebida = 'Comida';

  List<String> guarnicao = [];
  void addToGuarnicao(String item) => guarnicao.add(item);
  void removeFromGuarnicao(String item) => guarnicao.remove(item);
  void removeAtIndexFromGuarnicao(int index) => guarnicao.removeAt(index);
  void insertAtIndexInGuarnicao(int index, String item) =>
      guarnicao.insert(index, item);
  void updateGuarnicaoAtIndex(int index, Function(String) updateFn) =>
      guarnicao[index] = updateFn(guarnicao[index]);

  String? hide = '00';

  String titulo = '';

  List<String> listaCategorias = [];
  void addToListaCategorias(String item) => listaCategorias.add(item);
  void removeFromListaCategorias(String item) => listaCategorias.remove(item);
  void removeAtIndexFromListaCategorias(int index) =>
      listaCategorias.removeAt(index);
  void insertAtIndexInListaCategorias(int index, String item) =>
      listaCategorias.insert(index, item);
  void updateListaCategoriasAtIndex(int index, Function(String) updateFn) =>
      listaCategorias[index] = updateFn(listaCategorias[index]);

  int hideguarnicao = 0;

  int? hideadicional = 0;

  bool hideLit = false;

  String descrip = '';

  int? pratoID = 00;

  String desc = '';

  double? valor;

  String pedo = '';

  CategoriaRow? supaCat;

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

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for TextFieldSB widget.
  FocusNode? textFieldSBFocusNode;
  TextEditingController? textFieldSBController;
  String? Function(BuildContext, String?)? textFieldSBControllerValidator;
  // State field(s) for DESC widget.
  FocusNode? descFocusNode;
  TextEditingController? descController;
  String? Function(BuildContext, String?)? descControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  PratosRow? prato2;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  PratosRow? prato1;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  PratosRow? prato;
  // State field(s) for TextField000000000 widget.
  FocusNode? textField000000000FocusNode;
  TextEditingController? textField000000000Controller;
  String? Function(BuildContext, String?)?
      textField000000000ControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Icon widget.
  GuarnicaoRow? apiResultInserirGarnicao;
  Completer<List<GuarnicaoRow>>? requestCompleter2;
  // State field(s) for TextFieldDesc widget.
  FocusNode? textFieldDescFocusNode;
  TextEditingController? textFieldDescController;
  String? Function(BuildContext, String?)? textFieldDescControllerValidator;
  // State field(s) for TextFieldValue widget.
  FocusNode? textFieldValueFocusNode;
  TextEditingController? textFieldValueController;
  String? Function(BuildContext, String?)? textFieldValueControllerValidator;
  // State field(s) for TextFieldPes widget.
  FocusNode? textFieldPesFocusNode;
  TextEditingController? textFieldPesController;
  String? Function(BuildContext, String?)? textFieldPesControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Icon widget.
  GuarnicaoRow? apiResultInserirGarnicaoAd;
  Completer<List<GuarnicaoRow>>? requestCompleter1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController12;
  String? Function(BuildContext, String?)? textController12Validator;

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
    textFieldSBFocusNode?.dispose();
    textFieldSBController?.dispose();

    descFocusNode?.dispose();
    descController?.dispose();

    textFieldFocusNode1?.dispose();
    textController3?.dispose();

    textFieldFocusNode2?.dispose();
    textController4?.dispose();

    textFieldFocusNode3?.dispose();
    textController5?.dispose();

    textFieldFocusNode4?.dispose();
    textController6?.dispose();

    textFieldFocusNode5?.dispose();
    textController7?.dispose();

    textField000000000FocusNode?.dispose();
    textField000000000Controller?.dispose();

    textFieldDescFocusNode?.dispose();
    textFieldDescController?.dispose();

    textFieldValueFocusNode?.dispose();
    textFieldValueController?.dispose();

    textFieldPesFocusNode?.dispose();
    textFieldPesController?.dispose();

    textFieldFocusNode6?.dispose();
    textController12?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}

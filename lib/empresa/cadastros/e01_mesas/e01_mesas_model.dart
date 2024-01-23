import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/componentes/drawer_a_d_m/drawer_a_d_m_widget.dart';
import '/componentes/header_empresa/header_empresa_widget.dart';
import '/componentes/popup_sucesso_mesas/popup_sucesso_mesas_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'e01_mesas_widget.dart' show E01MesasWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class E01MesasModel extends FlutterFlowModel<E01MesasWidget> {
  ///  Local state fields for this page.

  bool cadVer = false;

  int count = 1;

  List<String> listaNum = [];
  void addToListaNum(String item) => listaNum.add(item);
  void removeFromListaNum(String item) => listaNum.remove(item);
  void removeAtIndexFromListaNum(int index) => listaNum.removeAt(index);
  void insertAtIndexInListaNum(int index, String item) =>
      listaNum.insert(index, item);
  void updateListaNumAtIndex(int index, Function(String) updateFn) =>
      listaNum[index] = updateFn(listaNum[index]);

  int mostrarLista = 1;

  String? mesaID;

  List<String> listamesas = [];
  void addToListamesas(String item) => listamesas.add(item);
  void removeFromListamesas(String item) => listamesas.remove(item);
  void removeAtIndexFromListamesas(int index) => listamesas.removeAt(index);
  void insertAtIndexInListamesas(int index, String item) =>
      listamesas.insert(index, item);
  void updateListamesasAtIndex(int index, Function(String) updateFn) =>
      listamesas[index] = updateFn(listamesas[index]);

  List<PedidosRow> listaPedisos = [];
  void addToListaPedisos(PedidosRow item) => listaPedisos.add(item);
  void removeFromListaPedisos(PedidosRow item) => listaPedisos.remove(item);
  void removeAtIndexFromListaPedisos(int index) => listaPedisos.removeAt(index);
  void insertAtIndexInListaPedisos(int index, PedidosRow item) =>
      listaPedisos.insert(index, item);
  void updateListaPedisosAtIndex(int index, Function(PedidosRow) updateFn) =>
      listaPedisos[index] = updateFn(listaPedisos[index]);

  String mesaEscolhida = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Buscar Pedido por restaurante)] action in E01Mesas widget.
  ApiCallResponse? listaPedidos;
  // Model for DrawerADM component.
  late DrawerADMModel drawerADMModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - Update Row] action in Button widget.
  List<MesasRow>? apiResultCriarMesaas;
  // Stores action output result for [Backend Call - Update Row] action in Button widget.
  List<MesasRow>? apiResultEditarMesas;
  // Stores action output result for [Backend Call - API (Buscar Pedido por restaurante)] action in Text widget.
  ApiCallResponse? listaPedidosCopy;
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
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    headerEmpresaModel.dispose();
  }

  /// Action blocks are added here.

  Future gerarMesas(BuildContext context) async {}

  /// Additional helper methods are added here.
}

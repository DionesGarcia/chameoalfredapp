import '/backend/supabase/supabase.dart';
import '/componentes/vazio_semitem/vazio_semitem_widget.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'cliente_botonadd_carrinho_widget.dart'
    show ClienteBotonaddCarrinhoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ClienteBotonaddCarrinhoModel
    extends FlutterFlowModel<ClienteBotonaddCarrinhoWidget> {
  ///  Local state fields for this component.

  double? valor;

  List<String> lista01 = [];
  void addToLista01(String item) => lista01.add(item);
  void removeFromLista01(String item) => lista01.remove(item);
  void removeAtIndexFromLista01(int index) => lista01.removeAt(index);
  void insertAtIndexInLista01(int index, String item) =>
      lista01.insert(index, item);
  void updateLista01AtIndex(int index, Function(String) updateFn) =>
      lista01[index] = updateFn(lista01[index]);

  List<String> lista2 = [];
  void addToLista2(String item) => lista2.add(item);
  void removeFromLista2(String item) => lista2.remove(item);
  void removeAtIndexFromLista2(int index) => lista2.removeAt(index);
  void insertAtIndexInLista2(int index, String item) =>
      lista2.insert(index, item);
  void updateLista2AtIndex(int index, Function(String) updateFn) =>
      lista2[index] = updateFn(lista2[index]);

  List<String> listaingre = [];
  void addToListaingre(String item) => listaingre.add(item);
  void removeFromListaingre(String item) => listaingre.remove(item);
  void removeAtIndexFromListaingre(int index) => listaingre.removeAt(index);
  void insertAtIndexInListaingre(int index, String item) =>
      listaingre.insert(index, item);
  void updateListaingreAtIndex(int index, Function(String) updateFn) =>
      listaingre[index] = updateFn(listaingre[index]);

  bool hide = false;

  double? ingredientes;

  String quantidade = '';

  ///  State fields for stateful widgets in this component.

  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for TextField1 widget.
  FocusNode? textField1FocusNode;
  TextEditingController? textField1Controller;
  String? Function(BuildContext, String?)? textField1ControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ItensDoPedidoRow? pedido;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textField1FocusNode?.dispose();
    textField1Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

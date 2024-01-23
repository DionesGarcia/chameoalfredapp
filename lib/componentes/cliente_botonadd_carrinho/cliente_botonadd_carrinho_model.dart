import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cliente_botonadd_carrinho_widget.dart'
    show ClienteBotonaddCarrinhoWidget;
import 'package:flutter/material.dart';

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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textField1FocusNode?.dispose();
    textField1Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

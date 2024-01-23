import '/componentes/drawer_user/drawer_user_widget.dart';
import '/componentes/header_empresa/header_empresa_widget.dart';
import '/componentes/pizzas2sabor3/pizzas2sabor3_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cliente3pizzas3_widget.dart' show Cliente3pizzas3Widget;
import 'package:flutter/material.dart';

class Cliente3pizzas3Model extends FlutterFlowModel<Cliente3pizzas3Widget> {
  ///  Local state fields for this page.

  String categoria = '';

  double? valorTotal = 0.00;

  List<int> carrinho = [];
  void addToCarrinho(int item) => carrinho.add(item);
  void removeFromCarrinho(int item) => carrinho.remove(item);
  void removeAtIndexFromCarrinho(int index) => carrinho.removeAt(index);
  void insertAtIndexInCarrinho(int index, int item) =>
      carrinho.insert(index, item);
  void updateCarrinhoAtIndex(int index, Function(int) updateFn) =>
      carrinho[index] = updateFn(carrinho[index]);

  String check = '1';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for HeaderEmpresa component.
  late HeaderEmpresaModel headerEmpresaModel;
  // Model for DrawerUser component.
  late DrawerUserModel drawerUserModel;
  // Models for pizzas2sabor3 dynamic component.
  late FlutterFlowDynamicModels<Pizzas2sabor3Model> pizzas2sabor3Models;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    headerEmpresaModel = createModel(context, () => HeaderEmpresaModel());
    drawerUserModel = createModel(context, () => DrawerUserModel());
    pizzas2sabor3Models = FlutterFlowDynamicModels(() => Pizzas2sabor3Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerEmpresaModel.dispose();
    drawerUserModel.dispose();
    pizzas2sabor3Models.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

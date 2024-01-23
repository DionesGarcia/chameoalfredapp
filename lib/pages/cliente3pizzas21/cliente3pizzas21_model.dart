import '/components/drawer_user/drawer_user_widget.dart';
import '/components/header_empresa/header_empresa_widget.dart';
import '/components/pizzas2sabor31/pizzas2sabor31_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cliente3pizzas21_widget.dart' show Cliente3pizzas21Widget;
import 'package:flutter/material.dart';

class Cliente3pizzas21Model extends FlutterFlowModel<Cliente3pizzas21Widget> {
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
  // Models for pizzas2sabor31 dynamic component.
  late FlutterFlowDynamicModels<Pizzas2sabor31Model> pizzas2sabor31Models;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    headerEmpresaModel = createModel(context, () => HeaderEmpresaModel());
    drawerUserModel = createModel(context, () => DrawerUserModel());
    pizzas2sabor31Models =
        FlutterFlowDynamicModels(() => Pizzas2sabor31Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerEmpresaModel.dispose();
    drawerUserModel.dispose();
    pizzas2sabor31Models.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

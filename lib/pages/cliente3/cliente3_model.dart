import '/components/drawer_user/drawer_user_widget.dart';
import '/components/header_empresa/header_empresa_widget.dart';
import '/components/lanches_com12/lanches_com12_widget.dart';
import '/components/lanches_sem12/lanches_sem12_widget.dart';
import '/components/pizzas/pizzas_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cliente3_widget.dart' show Cliente3Widget;
import 'package:flutter/material.dart';

class Cliente3Model extends FlutterFlowModel<Cliente3Widget> {
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

  double? valorItem;

  String testeButton = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for HeaderEmpresa component.
  late HeaderEmpresaModel headerEmpresaModel;
  // Model for DrawerUser component.
  late DrawerUserModel drawerUserModel;
  // Models for pizzas dynamic component.
  late FlutterFlowDynamicModels<PizzasModel> pizzasModels;
  // Models for lanchesCom12 dynamic component.
  late FlutterFlowDynamicModels<LanchesCom12Model> lanchesCom12Models;
  // Models for lanchesSem12 dynamic component.
  late FlutterFlowDynamicModels<LanchesSem12Model> lanchesSem12Models;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    headerEmpresaModel = createModel(context, () => HeaderEmpresaModel());
    drawerUserModel = createModel(context, () => DrawerUserModel());
    pizzasModels = FlutterFlowDynamicModels(() => PizzasModel());
    lanchesCom12Models = FlutterFlowDynamicModels(() => LanchesCom12Model());
    lanchesSem12Models = FlutterFlowDynamicModels(() => LanchesSem12Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerEmpresaModel.dispose();
    drawerUserModel.dispose();
    pizzasModels.dispose();
    lanchesCom12Models.dispose();
    lanchesSem12Models.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

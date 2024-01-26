import '/backend/supabase/supabase.dart';
import '/components/cliente_botonadd_carrinho/cliente_botonadd_carrinho_widget.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pizzas_model.dart';
export 'pizzas_model.dart';

class PizzasWidget extends StatefulWidget {
  const PizzasWidget({
    super.key,
    required this.mesa,
    required this.prato,
    required this.restaurante,
    required this.pedido,
    required this.categoria,
  });

  final String? mesa;
  final PratosRow? prato;
  final EstabelecimentoRow? restaurante;
  final PedidosRow? pedido;
  final CategoriaRow? categoria;

  @override
  State<PizzasWidget> createState() => _PizzasWidgetState();
}

class _PizzasWidgetState extends State<PizzasWidget> {
  late PizzasModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PizzasModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FlutterFlowRadioButton(
      options: ['1', '1/2', '1/3'].toList(),
      onChanged: (val) async {
        setState(() {});
        var shouldSetState = false;
        _model.updatePage(() {
          _model.pizzaretorno = _model.radioButtonValue!;
        });
        if (_model.pizzaretorno == '1') {
          var confirmDialogResponse = await showDialog<bool>(
                context: context,
                builder: (alertDialogContext) {
                  return AlertDialog(
                    title: const Text('Pizza 1 sabor.'),
                    content: const Text('Deseja adicionar ao carrinho?'),
                    actions: [
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, false),
                        child: const Text('Opções'),
                      ),
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, true),
                        child: const Text('Adicionar ao carrinho'),
                      ),
                    ],
                  );
                },
              ) ??
              false;
          if (confirmDialogResponse) {
            setState(() {
              _model.valorPizza = valueOrDefault<double>(
                widget.prato?.pizza1,
                0.0,
              );
            });
            _model.pedido1sabor = await ItensDoPedidoTable().insert({
              'mesa': widget.mesa,
              'prato_id': widget.prato?.id,
              'valor': _model.valorPizza,
              'confirmado': false,
              'cliente': FFAppState().userID,
              'categoria_ID': widget.categoria?.id,
              'categoria': widget.categoria?.nome,
              'prato': widget.prato?.nome,
              'desc': widget.prato?.descricao,
              'imagemCat': widget.categoria?.imagem,
              'pedido_id': widget.pedido?.id,
              'qtd': '1',
              '1/2': false,
            });
            shouldSetState = true;
            await showDialog(
              context: context,
              builder: (alertDialogContext) {
                return AlertDialog(
                  content: const Text('Pizza adicionada ao carrinho!'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(alertDialogContext),
                      child: const Text('Ok'),
                    ),
                  ],
                );
              },
            );
          } else {
            setState(() {
              _model.valorPizza = valueOrDefault<double>(
                widget.prato?.pizza1,
                0.0,
              );
            });
            await showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              enableDrag: false,
              context: context,
              builder: (context) {
                return Padding(
                  padding: MediaQuery.viewInsetsOf(context),
                  child: ClienteBotonaddCarrinhoWidget(
                    mesa: widget.mesa!,
                    categoria: widget.categoria!,
                    prato: widget.prato!,
                    pedido: widget.pedido!,
                    valor: _model.valorPizza!,
                    meia: false,
                  ),
                );
              },
            ).then((value) => safeSetState(() {}));

            Navigator.pop(context);
          }

          context.pushNamed(
            'Cliente3',
            queryParameters: {
              'mesa': serializeParam(
                widget.mesa,
                ParamType.String,
              ),
              'categoria': serializeParam(
                widget.categoria,
                ParamType.SupabaseRow,
              ),
              'restaurante': serializeParam(
                widget.restaurante,
                ParamType.SupabaseRow,
              ),
              'pedido': serializeParam(
                widget.pedido,
                ParamType.SupabaseRow,
              ),
            }.withoutNulls,
          );
        } else if (_model.pizzaretorno == '1/2') {
          var confirmDialogResponse = await showDialog<bool>(
                context: context,
                builder: (alertDialogContext) {
                  return AlertDialog(
                    title: const Text('Pizza 2 sabores'),
                    content:
                        const Text('Escolha mais 1 sabor para completar a pizza.'),
                    actions: [
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, false),
                        child: const Text('Cancelar'),
                      ),
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, true),
                        child: const Text('Adicionar ao carrinho'),
                      ),
                    ],
                  );
                },
              ) ??
              false;
          if (confirmDialogResponse) {
            setState(() {
              _model.valorPizza = (widget.prato!.pizza2!) * 2;
            });
            _model.pedido2sabor = await ItensDoPedidoTable().insert({
              'mesa': widget.mesa,
              'prato_id': widget.prato?.id,
              'valor': _model.valorPizza,
              'confirmado': false,
              'cliente': FFAppState().userID,
              'categoria_ID': widget.categoria?.id,
              'categoria': widget.categoria?.nome,
              'prato': widget.prato?.nome,
              'desc': widget.prato?.descricao,
              'imagemCat': widget.categoria?.imagem,
              'pedido_id': widget.pedido?.id,
              'qtd': '1',
              '1/2': false,
            });
            shouldSetState = true;

            context.pushNamed(
              'Cliente3pizzas2',
              queryParameters: {
                'mesa': serializeParam(
                  widget.mesa,
                  ParamType.String,
                ),
                'categoria': serializeParam(
                  widget.categoria,
                  ParamType.SupabaseRow,
                ),
                'restaurante': serializeParam(
                  widget.restaurante,
                  ParamType.SupabaseRow,
                ),
                'pedido': serializeParam(
                  widget.pedido,
                  ParamType.SupabaseRow,
                ),
                'itempedido': serializeParam(
                  _model.pedido2sabor,
                  ParamType.SupabaseRow,
                ),
                'sabores': serializeParam(
                  '1',
                  ParamType.String,
                ),
              }.withoutNulls,
            );
          } else {
            if (shouldSetState) setState(() {});
            return;
          }
        } else if (_model.pizzaretorno == '1/3') {
          var confirmDialogResponse = await showDialog<bool>(
                context: context,
                builder: (alertDialogContext) {
                  return AlertDialog(
                    title: const Text('Pizza 3 sabores'),
                    content:
                        const Text('Escolha mais 2 sabores para completar a pizza.'),
                    actions: [
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, false),
                        child: const Text('Cancelar'),
                      ),
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext, true),
                        child: const Text('Adicionar ao carrinho'),
                      ),
                    ],
                  );
                },
              ) ??
              false;
          if (!confirmDialogResponse) {
            if (shouldSetState) setState(() {});
            return;
          }
          setState(() {
            _model.valorPizza = (widget.prato!.pizza3!) * 3;
          });
          _model.pedido3sabor = await ItensDoPedidoTable().insert({
            'mesa': widget.mesa,
            'prato_id': widget.prato?.id,
            'valor': _model.valorPizza,
            'confirmado': false,
            'cliente': FFAppState().userID,
            'categoria_ID': widget.categoria?.id,
            'categoria': widget.categoria?.nome,
            'prato': widget.prato?.nome,
            'desc': widget.prato?.descricao,
            'imagemCat': widget.categoria?.imagem,
            'pedido_id': widget.pedido?.id,
            'qtd': '1',
            '1/2': false,
          });
          shouldSetState = true;

          context.pushNamed(
            'Cliente3pizzas3',
            queryParameters: {
              'mesa': serializeParam(
                widget.mesa,
                ParamType.String,
              ),
              'categoria': serializeParam(
                widget.categoria,
                ParamType.SupabaseRow,
              ),
              'restaurante': serializeParam(
                widget.restaurante,
                ParamType.SupabaseRow,
              ),
              'pedido': serializeParam(
                widget.pedido,
                ParamType.SupabaseRow,
              ),
              'itempedido': serializeParam(
                _model.pedido3sabor,
                ParamType.SupabaseRow,
              ),
              'sabores': serializeParam(
                2,
                ParamType.int,
              ),
            }.withoutNulls,
          );
        } else {
          if (shouldSetState) setState(() {});
          return;
        }

        if (shouldSetState) setState(() {});
      },
      controller: _model.radioButtonValueController ??=
          FormFieldController<String>(null),
      optionHeight: 32.0,
      textStyle: FlutterFlowTheme.of(context).labelMedium,
      buttonPosition: RadioButtonPosition.left,
      direction: Axis.vertical,
      radioButtonColor: FlutterFlowTheme.of(context).secundria,
      inactiveRadioButtonColor: FlutterFlowTheme.of(context).terceira,
      toggleable: false,
      horizontalAlignment: WrapAlignment.start,
      verticalAlignment: WrapCrossAlignment.start,
    );
  }
}

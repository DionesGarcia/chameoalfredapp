import '/backend/supabase/supabase.dart';
import '/components/cliente_botonadd_carrinho/cliente_botonadd_carrinho_widget.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'lanches_com12_model.dart';
export 'lanches_com12_model.dart';

class LanchesCom12Widget extends StatefulWidget {
  const LanchesCom12Widget({
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
  State<LanchesCom12Widget> createState() => _LanchesCom12WidgetState();
}

class _LanchesCom12WidgetState extends State<LanchesCom12Widget> {
  late LanchesCom12Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LanchesCom12Model());

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
      options: ['1', '1/2'].toList(),
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
                    title: Text(widget.prato!.nome!),
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
            _model.pedido1sabor = await ItensDoPedidoTable().insert({
              'mesa': widget.mesa,
              'prato_id': widget.prato?.id,
              'valor': widget.prato?.valor,
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
          } else {
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
                    valor: widget.prato!.valor!,
                    meia: false,
                  ),
                );
              },
            ).then((value) => safeSetState(() {}));

            Navigator.pop(context);
          }
        } else if (_model.pizzaretorno == '1/2') {
          var confirmDialogResponse = await showDialog<bool>(
                context: context,
                builder: (alertDialogContext) {
                  return AlertDialog(
                    title: Text(widget.prato!.nome!),
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
            _model.pedido2sabor = await ItensDoPedidoTable().insert({
              'mesa': widget.mesa,
              'prato_id': widget.prato?.id,
              'valor': widget.prato?.valorMeia,
              'confirmado': false,
              'cliente': FFAppState().userID,
              'categoria_ID': widget.categoria?.id,
              'categoria': widget.categoria?.nome,
              'prato': widget.prato?.nome,
              'desc': widget.prato?.descricao,
              'imagemCat': widget.categoria?.imagem,
              'pedido_id': widget.pedido?.id,
              '1/2': true,
              'qtd': '1',
            });
            shouldSetState = true;
          } else {
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
                    valor: widget.prato!.valorMeia!,
                    meia: true,
                  ),
                );
              },
            ).then((value) => safeSetState(() {}));

            Navigator.pop(context);
          }
        } else {
          if (shouldSetState) setState(() {});
          return;
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

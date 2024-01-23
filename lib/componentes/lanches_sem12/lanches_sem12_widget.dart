import '/backend/supabase/supabase.dart';
import '/componentes/cliente_botonadd_carrinho/cliente_botonadd_carrinho_widget.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'lanches_sem12_model.dart';
export 'lanches_sem12_model.dart';

class LanchesSem12Widget extends StatefulWidget {
  const LanchesSem12Widget({
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
  _LanchesSem12WidgetState createState() => _LanchesSem12WidgetState();
}

class _LanchesSem12WidgetState extends State<LanchesSem12Widget> {
  late LanchesSem12Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LanchesSem12Model());

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
      options: ['1'].toList(),
      onChanged: (val) async {
        setState(() {});
        _model.updatePage(() {
          _model.pizzaretorno = _model.radioButtonValue!;
        });
        var confirmDialogResponse = await showDialog<bool>(
              context: context,
              builder: (alertDialogContext) {
                return AlertDialog(
                  title: Text(widget.prato!.nome!),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(alertDialogContext, false),
                      child: const Text('Opções'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(alertDialogContext, true),
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

        setState(() {});
      },
      controller: _model.radioButtonValueController ??=
          FormFieldController<String>(null),
      optionHeight: 32.0,
      textStyle: FlutterFlowTheme.of(context).labelMedium.override(
            fontFamily: 'Readex Pro',
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
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

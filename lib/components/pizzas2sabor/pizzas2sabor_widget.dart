import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pizzas2sabor_model.dart';
export 'pizzas2sabor_model.dart';

class Pizzas2saborWidget extends StatefulWidget {
  const Pizzas2saborWidget({
    super.key,
    required this.mesa,
    required this.prato,
    required this.restaurante,
    required this.pedido,
    required this.categoria,
    required this.itemPedido,
    required this.sabores,
    required this.sabores2,
  });

  final String? mesa;
  final PratosRow? prato;
  final EstabelecimentoRow? restaurante;
  final PedidosRow? pedido;
  final CategoriaRow? categoria;
  final ItensDoPedidoRow? itemPedido;
  final String? sabores;
  final String? sabores2;

  @override
  _Pizzas2saborWidgetState createState() => _Pizzas2saborWidgetState();
}

class _Pizzas2saborWidgetState extends State<Pizzas2saborWidget> {
  late Pizzas2saborModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Pizzas2saborModel());

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
      options: [''].toList(),
      onChanged: (val) async {
        setState(() {});
        await ItensDoPedidoTable().update(
          data: {
            'pizzaCombinada': '${widget.prato?.nome}',
          },
          matchingRows: (rows) => rows.eq(
            'id',
            widget.itemPedido?.id,
          ),
        );
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
      },
      controller: _model.radioButtonValueController ??=
          FormFieldController<String>(widget.prato!.id.toString()),
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

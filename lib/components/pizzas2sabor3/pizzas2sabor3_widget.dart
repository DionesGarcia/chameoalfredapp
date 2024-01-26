import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pizzas2sabor3_model.dart';
export 'pizzas2sabor3_model.dart';

class Pizzas2sabor3Widget extends StatefulWidget {
  const Pizzas2sabor3Widget({
    super.key,
    required this.mesa,
    required this.prato,
    required this.restaurante,
    required this.pedido,
    required this.categoria,
    required this.itemPedido,
    required this.sabores,
  });

  final String? mesa;
  final PratosRow? prato;
  final EstabelecimentoRow? restaurante;
  final PedidosRow? pedido;
  final CategoriaRow? categoria;
  final ItensDoPedidoRow? itemPedido;
  final String? sabores;

  @override
  State<Pizzas2sabor3Widget> createState() => _Pizzas2sabor3WidgetState();
}

class _Pizzas2sabor3WidgetState extends State<Pizzas2sabor3Widget> {
  late Pizzas2sabor3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Pizzas2sabor3Model());

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
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: const Text('Sabor adicionado!'),
              content: const Text('Por favor, selecione mais 1 sabor.'),
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
          'Cliente3pizzas21',
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
              widget.itemPedido,
              ParamType.SupabaseRow,
            ),
            'sabores': serializeParam(
              widget.prato?.nome,
              ParamType.String,
            ),
          }.withoutNulls,
        );
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

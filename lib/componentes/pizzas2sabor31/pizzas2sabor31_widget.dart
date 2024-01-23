import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pizzas2sabor31_model.dart';
export 'pizzas2sabor31_model.dart';

class Pizzas2sabor31Widget extends StatefulWidget {
  const Pizzas2sabor31Widget({
    Key? key,
    required this.mesa,
    required this.prato,
    required this.restaurante,
    required this.pedido,
    required this.categoria,
    required this.itemPedido,
    required this.sabores,
    required this.sabores2,
  }) : super(key: key);

  final String? mesa;
  final PratosRow? prato;
  final EstabelecimentoRow? restaurante;
  final PedidosRow? pedido;
  final CategoriaRow? categoria;
  final ItensDoPedidoRow? itemPedido;
  final String? sabores;
  final String? sabores2;

  @override
  _Pizzas2sabor31WidgetState createState() => _Pizzas2sabor31WidgetState();
}

class _Pizzas2sabor31WidgetState extends State<Pizzas2sabor31Widget> {
  late Pizzas2sabor31Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Pizzas2sabor31Model());

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
            'pizzaCombinada': '${widget.prato?.nome}/${widget.sabores}',
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
              content: Text('Pizza adicionada ao carrinho!'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
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

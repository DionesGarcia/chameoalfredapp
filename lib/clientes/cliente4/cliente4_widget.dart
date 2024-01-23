import '/backend/supabase/supabase.dart';
import '/componentes/checkout/checkout_widget.dart';
import '/componentes/drawer_user/drawer_user_widget.dart';
import '/componentes/header_empresa/header_empresa_widget.dart';
import '/componentes/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'cliente4_model.dart';
export 'cliente4_model.dart';

class Cliente4Widget extends StatefulWidget {
  const Cliente4Widget({
    super.key,
    required this.valorCarrinho,
    required this.mesa,
    required this.restaurante,
    required this.pedido,
  });

  final double? valorCarrinho;
  final String? mesa;
  final EstabelecimentoRow? restaurante;
  final PedidosRow? pedido;

  @override
  _Cliente4WidgetState createState() => _Cliente4WidgetState();
}

class _Cliente4WidgetState extends State<Cliente4Widget> {
  late Cliente4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Cliente4Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.nomePagina(
        context,
        nome: '0',
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return Title(
        title: 'Cliente4',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            drawer: Drawer(
              elevation: 16.0,
              child: wrapWithModel(
                model: _model.drawerUserModel,
                updateCallback: () => setState(() {}),
                child: const DrawerUserWidget(),
              ),
            ),
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(100.0),
              child: AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                automaticallyImplyLeading: false,
                actions: const [],
                flexibleSpace: FlexibleSpaceBar(
                  title: Container(
                    width: 600.0,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: wrapWithModel(
                      model: _model.headerEmpresaModel,
                      updateCallback: () => setState(() {}),
                      child: const HeaderEmpresaWidget(),
                    ),
                  ),
                  centerTitle: true,
                  expandedTitleScale: 1.0,
                ),
                elevation: 0.0,
              ),
            ),
            body: SafeArea(
              top: true,
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    Container(
                      width: 600.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Stack(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secundria,
                                        ),
                                      ),
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 3.0, 5.0, 3.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 5.0, 0.0),
                                              child: Text(
                                                'Mesa',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secundria,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                              ),
                                            ),
                                            Text(
                                              widget.mesa!,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secundria,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secundria,
                                        ),
                                      ),
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 3.0, 5.0, 3.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 5.0, 0.0),
                                              child: Text(
                                                'Pedido# ',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secundria,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                              ),
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                widget.pedido?.pedido
                                                    ?.toString(),
                                                '0',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secundria,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
                                thickness: 1.0,
                                color: Color(0xA3DA2E1A),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Switch.adaptive(
                                      value: _model.switchValue ??= false,
                                      onChanged: (newValue) async {
                                        setState(() =>
                                            _model.switchValue = newValue);
                                      },
                                      activeColor: FlutterFlowTheme.of(context)
                                          .secundria,
                                      activeTrackColor: const Color(0x77FF1B00),
                                      inactiveTrackColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      inactiveThumbColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                    ),
                                    Text(
                                      'Embrulhar para Viagem',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
                                thickness: 1.0,
                                color: Color(0xA3DA2E1A),
                              ),
                              Flexible(
                                child: FutureBuilder<List<ItensDoPedidoRow>>(
                                  future: ItensDoPedidoTable().queryRows(
                                    queryFn: (q) => q.eq(
                                      'pedido_id',
                                      widget.pedido?.id,
                                    ),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<ItensDoPedidoRow>
                                        listViewItensDoPedidoRowList =
                                        snapshot.data!;
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      scrollDirection: Axis.vertical,
                                      itemCount:
                                          listViewItensDoPedidoRowList.length,
                                      itemBuilder: (context, listViewIndex) {
                                        final listViewItensDoPedidoRow =
                                            listViewItensDoPedidoRowList[
                                                listViewIndex];
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      5.0, 0.0, 15.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Flexible(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Flexible(
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          3.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          listViewItensDoPedidoRow
                                                                              .qtd,
                                                                          '1',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              fontSize: 14.0,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      'un - ',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            fontSize:
                                                                                14.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        listViewItensDoPedidoRow
                                                                            .prato,
                                                                        '0',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            fontSize:
                                                                                14.0,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                          ),
                                                                    ),
                                                                    if (listViewItensDoPedidoRow
                                                                            .field12 ??
                                                                        true)
                                                                      Card(
                                                                        clipBehavior:
                                                                            Clip.antiAliasWithSaveLayer,
                                                                        color: const Color(
                                                                            0xFFE8FFEA),
                                                                        elevation:
                                                                            4.0,
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              0.0,
                                                                              5.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            '1/2',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  fontSize: 14.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (listViewItensDoPedidoRow.pizzaCombinada !=
                                                                            null &&
                                                                        listViewItensDoPedidoRow.pizzaCombinada !=
                                                                            '')
                                                                      Text(
                                                                        listViewItensDoPedidoRow
                                                                            .pizzaCombinada!,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              fontSize: 14.0,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                      ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Text(
                                                                    formatNumber(
                                                                      listViewItensDoPedidoRow
                                                                          .valor!,
                                                                      formatType:
                                                                          FormatType
                                                                              .custom,
                                                                      currency:
                                                                          'R\$ ',
                                                                      format:
                                                                          '##0.00',
                                                                      locale:
                                                                          'pt_BR',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaria,
                                                                          fontSize:
                                                                              14.0,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        40.0,
                                                                        0.0,
                                                                        15.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                if (listViewItensDoPedidoRow
                                                                            .obs !=
                                                                        null &&
                                                                    listViewItensDoPedidoRow
                                                                            .obs !=
                                                                        '')
                                                                  Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      listViewItensDoPedidoRow
                                                                          .obs,
                                                                      '0',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              const Color(0xFF15981B),
                                                                        ),
                                                                  ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        40.0,
                                                                        5.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                listViewItensDoPedidoRow
                                                                    .desc,
                                                                '0',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const Divider(
                                              thickness: 1.0,
                                              color: Color(0xA3DA2E1A),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    15.0, 5.0, 15.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 5.0, 0.0),
                                      child: Text(
                                        'Total',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              fontSize: 21.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                    FutureBuilder<List<SomaPedidoRow>>(
                                      future: SomaPedidoTable().querySingleRow(
                                        queryFn: (q) => q.eq(
                                          'pedido_id',
                                          widget.pedido?.id,
                                        ),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<SomaPedidoRow>
                                            textSomaPedidoRowList =
                                            snapshot.data!;
                                        final textSomaPedidoRow =
                                            textSomaPedidoRowList.isNotEmpty
                                                ? textSomaPedidoRowList.first
                                                : null;
                                        return Text(
                                          formatNumber(
                                            widget.valorCarrinho,
                                            formatType: FormatType.custom,
                                            currency: 'R\$ ',
                                            format: '#,##0.00',
                                            locale: 'pt_BR',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              if (_model.switchValue == true)
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 0.0, 15.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 5.0, 0.0),
                                        child: Text(
                                          'incluir taxa embalagem',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                      FutureBuilder<List<SomaPedidoRow>>(
                                        future:
                                            SomaPedidoTable().querySingleRow(
                                          queryFn: (q) => q.eq(
                                            'pedido_id',
                                            widget.pedido?.id,
                                          ),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<SomaPedidoRow>
                                              textSomaPedidoRowList =
                                              snapshot.data!;
                                          final textSomaPedidoRow =
                                              textSomaPedidoRowList.isNotEmpty
                                                  ? textSomaPedidoRowList.first
                                                  : null;
                                          return Text(
                                            valueOrDefault<String>(
                                              formatNumber(
                                                widget.restaurante?.txEmbalagem,
                                                formatType: FormatType.custom,
                                                currency: 'R\$ ',
                                                format: '##0.00',
                                                locale: 'pt_BR',
                                              ),
                                              '0',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    15.0, 30.0, 15.0, 85.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (!widget.restaurante!.shopping!)
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 10.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            await PedidosTable().update(
                                              data: {
                                                'restaurante_id':
                                                    widget.restaurante?.id,
                                                'cliente': FFAppState().userID,
                                                'total': widget.valorCarrinho,
                                                'horaPedido':
                                                    supaSerialize<DateTime>(
                                                        getCurrentTimestamp),
                                                'mesa': widget.mesa,
                                                'status': 'NA FILA',
                                                'pedido': widget.pedido?.pedido,
                                                'Levar': _model.switchValue
                                                    ?.toString(),
                                                'pago': false,
                                                'horaFimPedido':
                                                    supaSerialize<DateTime>(
                                                        getCurrentTimestamp),
                                              },
                                              matchingRows: (rows) => rows.eq(
                                                'id',
                                                widget.pedido?.id,
                                              ),
                                            );
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  content: Text(
                                                      'O pedido nº ${widget.pedido?.pedido?.toString()} está na fila de produção. '),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext),
                                                      child: const Text('Ok'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                            await HistricoTable().insert({
                                              'restaurante_id':
                                                  widget.restaurante?.id,
                                              'mesa': widget.mesa,
                                              'pedido':
                                                  widget.pedido?.id.toString(),
                                              'ação':
                                                  'Pedido # ${widget.pedido?.pedido?.toString()}enviado a cozinha.',
                                              'data': supaSerialize<DateTime>(
                                                  getCurrentTimestamp),
                                              'filtro': 'pedidos',
                                              'Usuario': FFAppState()
                                                  .userID
                                                  .toString(),
                                            });

                                            context.pushNamed(
                                              'Cliente5',
                                              queryParameters: {
                                                'mesa': serializeParam(
                                                  widget.mesa,
                                                  ParamType.String,
                                                ),
                                                'valorCarrinho': serializeParam(
                                                  _model.switchValue == true
                                                      ? ((widget
                                                              .valorCarrinho!) +
                                                          valueOrDefault<
                                                              double>(
                                                            widget.restaurante
                                                                ?.txEmbalagem,
                                                            0.0,
                                                          ))
                                                      : widget.valorCarrinho,
                                                  ParamType.double,
                                                ),
                                                'restaurante': serializeParam(
                                                  widget.restaurante,
                                                  ParamType.SupabaseRow,
                                                ),
                                                'pedidoID': serializeParam(
                                                  widget.pedido,
                                                  ParamType.SupabaseRow,
                                                ),
                                              }.withoutNulls,
                                            );

                                            setState(() {});
                                          },
                                          text: 'Pedir',
                                          options: FFButtonOptions(
                                            width: 150.0,
                                            height: 45.0,
                                            padding: const EdgeInsets.all(0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFFA70000),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: Colors.white,
                                                      fontSize: 18.0,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                      ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          await PedidosTable().update(
                                            data: {
                                              'restaurante_id':
                                                  widget.restaurante?.id,
                                              'cliente': FFAppState().userID,
                                              'total': widget.valorCarrinho,
                                              'horaPedido':
                                                  supaSerialize<DateTime>(
                                                      getCurrentTimestamp),
                                              'mesa': widget.mesa,
                                              'status': 'NA FILA',
                                              'pedido': widget.pedido?.pedido,
                                              'Levar': _model.switchValue
                                                  ?.toString(),
                                              'pago': false,
                                              'horaFimPedido':
                                                  supaSerialize<DateTime>(
                                                      getCurrentTimestamp),
                                            },
                                            matchingRows: (rows) => rows.eq(
                                              'id',
                                              widget.pedido?.id,
                                            ),
                                          );
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                content: Text(
                                                    'O pedido nº ${widget.pedido?.pedido?.toString()} está na fila de produção. '),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext),
                                                    child: const Text('Ok'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                          await HistricoTable().insert({
                                            'restaurante_id':
                                                widget.restaurante?.id,
                                            'mesa': widget.mesa,
                                            'pedido':
                                                widget.pedido?.id.toString(),
                                            'ação':
                                                'Pedido # ${widget.pedido?.pedido?.toString()}enviado a cozinha.',
                                            'data': supaSerialize<DateTime>(
                                                getCurrentTimestamp),
                                            'filtro': 'pedidos',
                                            'Usuario':
                                                FFAppState().userID.toString(),
                                          });
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return GestureDetector(
                                                onTap: () => _model.unfocusNode
                                                        .canRequestFocus
                                                    ? FocusScope.of(context)
                                                        .requestFocus(
                                                            _model.unfocusNode)
                                                    : FocusScope.of(context)
                                                        .unfocus(),
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child: CheckoutWidget(
                                                    valor: _model.switchValue ==
                                                            true
                                                        ? ((widget
                                                                .valorCarrinho!) +
                                                            valueOrDefault<
                                                                double>(
                                                              widget.restaurante
                                                                  ?.txEmbalagem,
                                                              0.0,
                                                            ))
                                                        : widget.valorCarrinho!,
                                                    cover:
                                                        valueOrDefault<double>(
                                                      widget.restaurante?.cover,
                                                      0.0,
                                                    ),
                                                    txEmb: _model.switchValue ==
                                                            true
                                                        ? valueOrDefault<
                                                            double>(
                                                            widget.restaurante
                                                                ?.txEmbalagem,
                                                            0.0,
                                                          )
                                                        : 0.0,
                                                    mesa: widget.mesa!,
                                                    restaurante:
                                                        widget.restaurante!,
                                                    pedido: widget.pedido!,
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));

                                          context.pushNamed(
                                            'Cliente5',
                                            queryParameters: {
                                              'mesa': serializeParam(
                                                widget.mesa,
                                                ParamType.String,
                                              ),
                                              'valorCarrinho': serializeParam(
                                                _model.switchValue == true
                                                    ? ((widget.valorCarrinho!) +
                                                        valueOrDefault<double>(
                                                          widget.restaurante
                                                              ?.txEmbalagem,
                                                          0.0,
                                                        ))
                                                    : widget.valorCarrinho,
                                                ParamType.double,
                                              ),
                                              'restaurante': serializeParam(
                                                widget.restaurante,
                                                ParamType.SupabaseRow,
                                              ),
                                              'pedidoID': serializeParam(
                                                widget.pedido,
                                                ParamType.SupabaseRow,
                                              ),
                                            }.withoutNulls,
                                          );

                                          setState(() {});
                                        },
                                        text: 'Pedir e Pagar',
                                        options: FFButtonOptions(
                                          width: 150.0,
                                          height: 45.0,
                                          padding: const EdgeInsets.all(0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: const Color(0xFFA70000),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                    fontSize: 18.0,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: wrapWithModel(
                                    model: _model.navbarModel,
                                    updateCallback: () => setState(() {}),
                                    child: NavbarWidget(
                                      nomepagina: FFAppState().pagina,
                                      restID: widget.restaurante!.id,
                                      mesa: widget.mesa!,
                                      pedido: widget.pedido!,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

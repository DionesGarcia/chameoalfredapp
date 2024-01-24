import '/backend/supabase/supabase.dart';
import '/components/drawer_a_d_m/drawer_a_d_m_widget.dart';
import '/components/header_empresa/header_empresa_widget.dart';
import '/components/vazio_semitem/vazio_semitem_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'relatorio01_model.dart';
export 'relatorio01_model.dart';

class Relatorio01Widget extends StatefulWidget {
  const Relatorio01Widget({
    super.key,
    required this.restaurante,
  });

  final EstabelecimentoRow? restaurante;

  @override
  _Relatorio01WidgetState createState() => _Relatorio01WidgetState();
}

class _Relatorio01WidgetState extends State<Relatorio01Widget>
    with TickerProviderStateMixin {
  late Relatorio01Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Relatorio01Model());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.drawerADMModel,
            updateCallback: () => setState(() {}),
            child: const DrawerADMWidget(),
          ),
        ),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            actions: const [],
            flexibleSpace: FlexibleSpaceBar(
              title: Container(
                width: double.infinity,
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
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.safePop();
                            },
                            child: const Icon(
                              Icons.arrow_back,
                              color: Color(0xFFDA2E1A),
                              size: 25.0,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 20.0, 0.0),
                              child: Text(
                                'Relatórios',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 20.0,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1.0,
                      color: Color(0x83DA2E1A),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Align(
                            alignment: const Alignment(0.0, 0),
                            child: FlutterFlowButtonTabBar(
                              useToggleButtonStyle: false,
                              labelStyle:
                                  FlutterFlowTheme.of(context).titleMedium,
                              unselectedLabelStyle: const TextStyle(),
                              labelColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              unselectedLabelColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              backgroundColor:
                                  FlutterFlowTheme.of(context).accent1,
                              unselectedBackgroundColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderColor: FlutterFlowTheme.of(context).primary,
                              unselectedBorderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              elevation: 0.0,
                              buttonMargin: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              padding: const EdgeInsets.all(4.0),
                              tabs: const [
                                Tab(
                                  text: 'pedido',
                                ),
                                Tab(
                                  text: 'garçons',
                                ),
                                Tab(
                                  text: 'acessos',
                                ),
                              ],
                              controller: _model.tabBarController,
                              onTap: (i) async {
                                [() async {}, () async {}, () async {}][i]();
                              },
                            ),
                          ),
                          Expanded(
                            child: TabBarView(
                              controller: _model.tabBarController,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 0.0, 15.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Flexible(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Flexible(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            final datePicked1Date =
                                                                await showDatePicker(
                                                              context: context,
                                                              initialDate:
                                                                  dateTimeFromSecondsSinceEpoch(
                                                                      getCurrentTimestamp
                                                                          .secondsSinceEpoch),
                                                              firstDate:
                                                                  DateTime(
                                                                      1900),
                                                              lastDate: dateTimeFromSecondsSinceEpoch(
                                                                  getCurrentTimestamp
                                                                      .secondsSinceEpoch),
                                                            );

                                                            if (datePicked1Date !=
                                                                null) {
                                                              safeSetState(() {
                                                                _model.datePicked1 =
                                                                    DateTime(
                                                                  datePicked1Date
                                                                      .year,
                                                                  datePicked1Date
                                                                      .month,
                                                                  datePicked1Date
                                                                      .day,
                                                                );
                                                              });
                                                            }
                                                            setState(() {
                                                              _model.inicio =
                                                                  dateTimeFromSecondsSinceEpoch(
                                                                      valueOrDefault<
                                                                          int>(
                                                                _model
                                                                    .datePicked1
                                                                    ?.secondsSinceEpoch,
                                                                0,
                                                              ));
                                                            });
                                                          },
                                                          child: Container(
                                                            width: 117.0,
                                                            height: 28.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                              ),
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  dateTimeFormat(
                                                                    'd/M H:mm',
                                                                    _model
                                                                        .inicio,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                                  'selecione',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      20.0,
                                                                      0.0,
                                                                      20.0,
                                                                      0.0),
                                                          child: Text(
                                                            'a ',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            final datePicked2Date =
                                                                await showDatePicker(
                                                              context: context,
                                                              initialDate:
                                                                  getCurrentTimestamp,
                                                              firstDate:
                                                                  DateTime(
                                                                      1900),
                                                              lastDate:
                                                                  DateTime(
                                                                      2050),
                                                            );

                                                            if (datePicked2Date !=
                                                                null) {
                                                              safeSetState(() {
                                                                _model.datePicked2 =
                                                                    DateTime(
                                                                  datePicked2Date
                                                                      .year,
                                                                  datePicked2Date
                                                                      .month,
                                                                  datePicked2Date
                                                                      .day,
                                                                );
                                                              });
                                                            }
                                                            setState(() {
                                                              _model
                                                                  .fim = dateTimeFromSecondsSinceEpoch(_model
                                                                      .datePicked2!
                                                                      .secondsSinceEpoch +
                                                                  86399);
                                                            });
                                                          },
                                                          child: Container(
                                                            width: 117.0,
                                                            height: 28.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                              ),
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  dateTimeFormat(
                                                                    'd/M H:mm',
                                                                    _model.fim,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                                  'selecione',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Theme(
                                                          data: ThemeData(
                                                            checkboxTheme:
                                                                CheckboxThemeData(
                                                              visualDensity:
                                                                  VisualDensity
                                                                      .compact,
                                                              materialTapTargetSize:
                                                                  MaterialTapTargetSize
                                                                      .shrinkWrap,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            4.0),
                                                              ),
                                                            ),
                                                            unselectedWidgetColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                          ),
                                                          child: Checkbox(
                                                            value: _model
                                                                    .checkboxValue1 ??=
                                                                false,
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  _model.checkboxValue1 =
                                                                      newValue!);
                                                            },
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secundria,
                                                            checkColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                          ),
                                                        ),
                                                        Text(
                                                          'Mesas',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child:
                                                              FlutterFlowDropDown<
                                                                  String>(
                                                            controller: _model
                                                                    .dropDownValueController1 ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            options: const [
                                                              'Cozinha 1',
                                                              'Cozinha 2',
                                                              'Cozinha 3'
                                                            ],
                                                            onChanged: (val) =>
                                                                setState(() =>
                                                                    _model.dropDownValue1 =
                                                                        val),
                                                            width: 136.0,
                                                            height: 29.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                            hintText: 'Todos',
                                                            icon: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            elevation: 2.0,
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                            borderWidth: 2.0,
                                                            borderRadius: 8.0,
                                                            margin:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        4.0,
                                                                        16.0,
                                                                        4.0),
                                                            hidesUnderline:
                                                                true,
                                                            isSearchable: false,
                                                            isMultiSelect:
                                                                false,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 15.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Divider(
                                                          thickness: 1.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      15.0,
                                                                      0.0,
                                                                      15.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                'Referência',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                              Text(
                                                                'Ação ',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                              Text(
                                                                'data/hora',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Divider(
                                                          thickness: 1.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  if ((_model.fim != null) &&
                                                      (_model.inicio != null))
                                                    Flexible(
                                                      child: FutureBuilder<
                                                          List<HistricoRow>>(
                                                        future: HistricoTable()
                                                            .queryRows(
                                                          queryFn: (q) => q
                                                              .eq(
                                                                'restaurante_id',
                                                                widget
                                                                    .restaurante
                                                                    ?.id,
                                                              )
                                                              .eq(
                                                                'filtro',
                                                                'pedidos',
                                                              )
                                                              .gte(
                                                                'data',
                                                                supaSerialize<
                                                                        DateTime>(
                                                                    _model
                                                                        .inicio),
                                                              )
                                                              .lte(
                                                                'data',
                                                                supaSerialize<
                                                                        DateTime>(
                                                                    _model.fim),
                                                              ),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  valueColor:
                                                                      AlwaysStoppedAnimation<
                                                                          Color>(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<HistricoRow>
                                                              listViewHistricoRowList =
                                                              snapshot.data!;
                                                          if (listViewHistricoRowList
                                                              .isEmpty) {
                                                            return const VazioSemitemWidget();
                                                          }
                                                          return ListView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                listViewHistricoRowList
                                                                    .length,
                                                            itemBuilder: (context,
                                                                listViewIndex) {
                                                              final listViewHistricoRow =
                                                                  listViewHistricoRowList[
                                                                      listViewIndex];
                                                              return Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        15.0,
                                                                        0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              80.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              listViewHistricoRow.usuario,
                                                                              '00',
                                                                            ).maybeHandleOverflow(maxChars: 10),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  fontSize: 12.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            listViewHistricoRow.acao,
                                                                            'Null',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.w300,
                                                                                fontStyle: FontStyle.italic,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Text(
                                                                          dateTimeFormat(
                                                                            'd/M',
                                                                            listViewHistricoRow.dataField!,
                                                                            locale:
                                                                                FFLocalizations.of(context).languageCode,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                fontSize: 12.0,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  if ((_model.inicio == null) &&
                                                      (_model.fim == null))
                                                    Flexible(
                                                      child: FutureBuilder<
                                                          List<HistricoRow>>(
                                                        future: HistricoTable()
                                                            .queryRows(
                                                          queryFn: (q) => q
                                                              .eq(
                                                                'restaurante_id',
                                                                widget
                                                                    .restaurante
                                                                    ?.id,
                                                              )
                                                              .eq(
                                                                'filtro',
                                                                'pedidos',
                                                              ),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  valueColor:
                                                                      AlwaysStoppedAnimation<
                                                                          Color>(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<HistricoRow>
                                                              listViewHistricoRowList =
                                                              snapshot.data!;
                                                          if (listViewHistricoRowList
                                                              .isEmpty) {
                                                            return const VazioSemitemWidget();
                                                          }
                                                          return ListView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                listViewHistricoRowList
                                                                    .length,
                                                            itemBuilder: (context,
                                                                listViewIndex) {
                                                              final listViewHistricoRow =
                                                                  listViewHistricoRowList[
                                                                      listViewIndex];
                                                              return Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        15.0,
                                                                        0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              80.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              listViewHistricoRow.usuario,
                                                                              '00',
                                                                            ).maybeHandleOverflow(maxChars: 10),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  fontSize: 12.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            listViewHistricoRow.acao,
                                                                            'Null',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.w300,
                                                                                fontStyle: FontStyle.italic,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Text(
                                                                          dateTimeFormat(
                                                                            'd/M',
                                                                            listViewHistricoRow.dataField!,
                                                                            locale:
                                                                                FFLocalizations.of(context).languageCode,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                fontSize: 12.0,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
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
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 0.0, 15.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Flexible(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            final datePicked3Date =
                                                                await showDatePicker(
                                                              context: context,
                                                              initialDate:
                                                                  dateTimeFromSecondsSinceEpoch(
                                                                      getCurrentTimestamp
                                                                          .secondsSinceEpoch),
                                                              firstDate:
                                                                  DateTime(
                                                                      1900),
                                                              lastDate: dateTimeFromSecondsSinceEpoch(
                                                                  getCurrentTimestamp
                                                                      .secondsSinceEpoch),
                                                            );

                                                            if (datePicked3Date !=
                                                                null) {
                                                              safeSetState(() {
                                                                _model.datePicked3 =
                                                                    DateTime(
                                                                  datePicked3Date
                                                                      .year,
                                                                  datePicked3Date
                                                                      .month,
                                                                  datePicked3Date
                                                                      .day,
                                                                );
                                                              });
                                                            }
                                                            setState(() {
                                                              _model.inicio =
                                                                  dateTimeFromSecondsSinceEpoch(
                                                                      valueOrDefault<
                                                                          int>(
                                                                _model
                                                                    .datePicked3
                                                                    ?.secondsSinceEpoch,
                                                                0,
                                                              ));
                                                            });
                                                          },
                                                          child: Container(
                                                            width: 117.0,
                                                            height: 28.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                              ),
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  dateTimeFormat(
                                                                    'd/M H:mm',
                                                                    _model
                                                                        .inicio,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                                  'selecione',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      20.0,
                                                                      0.0,
                                                                      20.0,
                                                                      0.0),
                                                          child: Text(
                                                            'a ',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            final datePicked4Date =
                                                                await showDatePicker(
                                                              context: context,
                                                              initialDate:
                                                                  getCurrentTimestamp,
                                                              firstDate:
                                                                  DateTime(
                                                                      1900),
                                                              lastDate:
                                                                  DateTime(
                                                                      2050),
                                                            );

                                                            if (datePicked4Date !=
                                                                null) {
                                                              safeSetState(() {
                                                                _model.datePicked4 =
                                                                    DateTime(
                                                                  datePicked4Date
                                                                      .year,
                                                                  datePicked4Date
                                                                      .month,
                                                                  datePicked4Date
                                                                      .day,
                                                                );
                                                              });
                                                            }
                                                            setState(() {
                                                              _model
                                                                  .fim = dateTimeFromSecondsSinceEpoch(_model
                                                                      .datePicked4!
                                                                      .secondsSinceEpoch +
                                                                  86399);
                                                            });
                                                          },
                                                          child: Container(
                                                            width: 117.0,
                                                            height: 28.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                              ),
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  dateTimeFormat(
                                                                    'd/M H:mm',
                                                                    _model.fim,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                                  'selecione',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Theme(
                                                          data: ThemeData(
                                                            checkboxTheme:
                                                                CheckboxThemeData(
                                                              visualDensity:
                                                                  VisualDensity
                                                                      .compact,
                                                              materialTapTargetSize:
                                                                  MaterialTapTargetSize
                                                                      .shrinkWrap,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            4.0),
                                                              ),
                                                            ),
                                                            unselectedWidgetColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                          ),
                                                          child: Checkbox(
                                                            value: _model
                                                                    .checkboxValue2 ??=
                                                                false,
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  _model.checkboxValue2 =
                                                                      newValue!);
                                                            },
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secundria,
                                                            checkColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                          ),
                                                        ),
                                                        Text(
                                                          'Garçom',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child:
                                                              FlutterFlowDropDown<
                                                                  String>(
                                                            controller: _model
                                                                    .dropDownValueController2 ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            options: const [
                                                              'Abertas',
                                                              'Fechadas',
                                                              'Todas'
                                                            ],
                                                            onChanged: (val) =>
                                                                setState(() =>
                                                                    _model.dropDownValue2 =
                                                                        val),
                                                            width: 136.0,
                                                            height: 29.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                            hintText: 'Todos',
                                                            icon: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            elevation: 2.0,
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                            borderWidth: 2.0,
                                                            borderRadius: 8.0,
                                                            margin:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        4.0,
                                                                        16.0,
                                                                        4.0),
                                                            hidesUnderline:
                                                                true,
                                                            isSearchable: false,
                                                            isMultiSelect:
                                                                false,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 15.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Divider(
                                                          thickness: 1.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      15.0,
                                                                      0.0,
                                                                      15.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                'Referência',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                              Text(
                                                                'Ação ',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                              Text(
                                                                'data/hora',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Divider(
                                                          thickness: 1.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  if ((_model.fim != null) &&
                                                      (_model.inicio != null))
                                                    Flexible(
                                                      child: FutureBuilder<
                                                          List<HistricoRow>>(
                                                        future: HistricoTable()
                                                            .queryRows(
                                                          queryFn: (q) => q
                                                              .eq(
                                                                'restaurante_id',
                                                                widget
                                                                    .restaurante
                                                                    ?.id,
                                                              )
                                                              .eq(
                                                                'filtro',
                                                                'garçons',
                                                              )
                                                              .gte(
                                                                'data',
                                                                supaSerialize<
                                                                        DateTime>(
                                                                    _model
                                                                        .inicio),
                                                              )
                                                              .lte(
                                                                'data',
                                                                supaSerialize<
                                                                        DateTime>(
                                                                    _model.fim),
                                                              ),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  valueColor:
                                                                      AlwaysStoppedAnimation<
                                                                          Color>(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<HistricoRow>
                                                              listViewHistricoRowList =
                                                              snapshot.data!;
                                                          if (listViewHistricoRowList
                                                              .isEmpty) {
                                                            return const VazioSemitemWidget();
                                                          }
                                                          return ListView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                listViewHistricoRowList
                                                                    .length,
                                                            itemBuilder: (context,
                                                                listViewIndex) {
                                                              final listViewHistricoRow =
                                                                  listViewHistricoRowList[
                                                                      listViewIndex];
                                                              return Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        15.0,
                                                                        0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              80.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              listViewHistricoRow.usuario,
                                                                              '00',
                                                                            ).maybeHandleOverflow(maxChars: 10),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            listViewHistricoRow.acao,
                                                                            'Null',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                fontWeight: FontWeight.w300,
                                                                                fontStyle: FontStyle.italic,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Text(
                                                                          dateTimeFormat(
                                                                            'd/M',
                                                                            listViewHistricoRow.dataField!,
                                                                            locale:
                                                                                FFLocalizations.of(context).languageCode,
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                        ),
                                                                        Text(
                                                                          ' | ',
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                        ),
                                                                        Text(
                                                                          dateTimeFormat(
                                                                            'jm',
                                                                            listViewHistricoRow.dataField!,
                                                                            locale:
                                                                                FFLocalizations.of(context).languageCode,
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  if ((_model.inicio == null) &&
                                                      (_model.fim == null))
                                                    Flexible(
                                                      child: FutureBuilder<
                                                          List<HistricoRow>>(
                                                        future: HistricoTable()
                                                            .queryRows(
                                                          queryFn: (q) => q
                                                              .eq(
                                                                'restaurante_id',
                                                                widget
                                                                    .restaurante
                                                                    ?.id,
                                                              )
                                                              .eq(
                                                                'filtro',
                                                                'garçons',
                                                              ),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  valueColor:
                                                                      AlwaysStoppedAnimation<
                                                                          Color>(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<HistricoRow>
                                                              listViewHistricoRowList =
                                                              snapshot.data!;
                                                          if (listViewHistricoRowList
                                                              .isEmpty) {
                                                            return const VazioSemitemWidget();
                                                          }
                                                          return ListView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                listViewHistricoRowList
                                                                    .length,
                                                            itemBuilder: (context,
                                                                listViewIndex) {
                                                              final listViewHistricoRow =
                                                                  listViewHistricoRowList[
                                                                      listViewIndex];
                                                              return Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        15.0,
                                                                        0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              80.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              listViewHistricoRow.usuario,
                                                                              '00',
                                                                            ).maybeHandleOverflow(maxChars: 10),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            listViewHistricoRow.acao,
                                                                            'Null',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                fontWeight: FontWeight.w300,
                                                                                fontStyle: FontStyle.italic,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Text(
                                                                          dateTimeFormat(
                                                                            'd/M',
                                                                            listViewHistricoRow.dataField!,
                                                                            locale:
                                                                                FFLocalizations.of(context).languageCode,
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                        ),
                                                                        Text(
                                                                          ' | ',
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                        ),
                                                                        Text(
                                                                          dateTimeFormat(
                                                                            'jm',
                                                                            listViewHistricoRow.dataField!,
                                                                            locale:
                                                                                FFLocalizations.of(context).languageCode,
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
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
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 0.0, 15.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Flexible(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            final datePicked5Date =
                                                                await showDatePicker(
                                                              context: context,
                                                              initialDate:
                                                                  dateTimeFromSecondsSinceEpoch(
                                                                      getCurrentTimestamp
                                                                          .secondsSinceEpoch),
                                                              firstDate:
                                                                  DateTime(
                                                                      1900),
                                                              lastDate: dateTimeFromSecondsSinceEpoch(
                                                                  getCurrentTimestamp
                                                                      .secondsSinceEpoch),
                                                            );

                                                            if (datePicked5Date !=
                                                                null) {
                                                              safeSetState(() {
                                                                _model.datePicked5 =
                                                                    DateTime(
                                                                  datePicked5Date
                                                                      .year,
                                                                  datePicked5Date
                                                                      .month,
                                                                  datePicked5Date
                                                                      .day,
                                                                );
                                                              });
                                                            }
                                                            setState(() {
                                                              _model.inicio =
                                                                  dateTimeFromSecondsSinceEpoch(
                                                                      valueOrDefault<
                                                                          int>(
                                                                _model
                                                                    .datePicked5
                                                                    ?.secondsSinceEpoch,
                                                                0,
                                                              ));
                                                            });
                                                          },
                                                          child: Container(
                                                            width: 117.0,
                                                            height: 28.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                              ),
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  dateTimeFormat(
                                                                    'd/M',
                                                                    _model
                                                                        .inicio,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                                  'selecione',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      20.0,
                                                                      0.0,
                                                                      20.0,
                                                                      0.0),
                                                          child: Text(
                                                            'a ',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            final datePicked6Date =
                                                                await showDatePicker(
                                                              context: context,
                                                              initialDate:
                                                                  getCurrentTimestamp,
                                                              firstDate:
                                                                  DateTime(
                                                                      1900),
                                                              lastDate:
                                                                  DateTime(
                                                                      2050),
                                                            );

                                                            if (datePicked6Date !=
                                                                null) {
                                                              safeSetState(() {
                                                                _model.datePicked6 =
                                                                    DateTime(
                                                                  datePicked6Date
                                                                      .year,
                                                                  datePicked6Date
                                                                      .month,
                                                                  datePicked6Date
                                                                      .day,
                                                                );
                                                              });
                                                            }
                                                            setState(() {
                                                              _model
                                                                  .fim = dateTimeFromSecondsSinceEpoch(_model
                                                                      .datePicked6!
                                                                      .secondsSinceEpoch +
                                                                  86399);
                                                            });
                                                          },
                                                          child: Container(
                                                            width: 117.0,
                                                            height: 28.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                              ),
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  dateTimeFormat(
                                                                    'd/M',
                                                                    _model.fim,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                                  'selecione',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 15.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Divider(
                                                          thickness: 1.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      15.0,
                                                                      0.0,
                                                                      15.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                'Referência',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                              Text(
                                                                'Ação ',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                              Text(
                                                                'data',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Divider(
                                                          thickness: 1.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  if ((_model.fim != null) &&
                                                      (_model.inicio != null))
                                                    Flexible(
                                                      child: FutureBuilder<
                                                          List<HistricoRow>>(
                                                        future: HistricoTable()
                                                            .queryRows(
                                                          queryFn: (q) => q
                                                              .eq(
                                                                'restaurante_id',
                                                                widget
                                                                    .restaurante
                                                                    ?.id,
                                                              )
                                                              .eq(
                                                                'filtro',
                                                                'acessos',
                                                              )
                                                              .gte(
                                                                'data',
                                                                supaSerialize<
                                                                        DateTime>(
                                                                    _model
                                                                        .inicio),
                                                              )
                                                              .lte(
                                                                'data',
                                                                supaSerialize<
                                                                        DateTime>(
                                                                    _model.fim),
                                                              ),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  valueColor:
                                                                      AlwaysStoppedAnimation<
                                                                          Color>(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<HistricoRow>
                                                              listViewHistricoRowList =
                                                              snapshot.data!;
                                                          if (listViewHistricoRowList
                                                              .isEmpty) {
                                                            return const VazioSemitemWidget();
                                                          }
                                                          return ListView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                listViewHistricoRowList
                                                                    .length,
                                                            itemBuilder: (context,
                                                                listViewIndex) {
                                                              final listViewHistricoRow =
                                                                  listViewHistricoRowList[
                                                                      listViewIndex];
                                                              return Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        15.0,
                                                                        0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              80.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              listViewHistricoRow.usuario,
                                                                              '00',
                                                                            ).maybeHandleOverflow(maxChars: 10),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  fontSize: 12.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            listViewHistricoRow.acao,
                                                                            'Null',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.w300,
                                                                                fontStyle: FontStyle.italic,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Text(
                                                                          dateTimeFormat(
                                                                            'd/M',
                                                                            listViewHistricoRow.dataField!,
                                                                            locale:
                                                                                FFLocalizations.of(context).languageCode,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                fontSize: 12.0,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  if ((_model.inicio == null) &&
                                                      (_model.fim == null))
                                                    Flexible(
                                                      child: FutureBuilder<
                                                          List<HistricoRow>>(
                                                        future: HistricoTable()
                                                            .queryRows(
                                                          queryFn: (q) => q
                                                              .eq(
                                                                'restaurante_id',
                                                                widget
                                                                    .restaurante
                                                                    ?.id,
                                                              )
                                                              .eq(
                                                                'filtro',
                                                                'acessos',
                                                              ),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  valueColor:
                                                                      AlwaysStoppedAnimation<
                                                                          Color>(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<HistricoRow>
                                                              listViewHistricoRowList =
                                                              snapshot.data!;
                                                          if (listViewHistricoRowList
                                                              .isEmpty) {
                                                            return const VazioSemitemWidget();
                                                          }
                                                          return ListView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                listViewHistricoRowList
                                                                    .length,
                                                            itemBuilder: (context,
                                                                listViewIndex) {
                                                              final listViewHistricoRow =
                                                                  listViewHistricoRowList[
                                                                      listViewIndex];
                                                              return Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        15.0,
                                                                        0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              80.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              listViewHistricoRow.usuario,
                                                                              '00',
                                                                            ).maybeHandleOverflow(maxChars: 10),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  fontSize: 12.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            listViewHistricoRow.acao,
                                                                            'Null',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                fontSize: 12.0,
                                                                                fontWeight: FontWeight.w300,
                                                                                fontStyle: FontStyle.italic,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Text(
                                                                          dateTimeFormat(
                                                                            'd/M',
                                                                            listViewHistricoRow.dataField!,
                                                                            locale:
                                                                                FFLocalizations.of(context).languageCode,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                fontSize: 12.0,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
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
                              ],
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
    );
  }
}

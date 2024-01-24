import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/drawer_a_d_m/drawer_a_d_m_widget.dart';
import '/components/header_empresa/header_empresa_widget.dart';
import '/components/popup_menu_cadastro/popup_menu_cadastro_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'e01_menu_model.dart';
export 'e01_menu_model.dart';

class E01MenuWidget extends StatefulWidget {
  const E01MenuWidget({super.key});

  @override
  _E01MenuWidgetState createState() => _E01MenuWidgetState();
}

class _E01MenuWidgetState extends State<E01MenuWidget> {
  late E01MenuModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => E01MenuModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (RootPageContext.isInactiveRootPage(context)) {
        return;
      }
      _model.uSERhOME = await SupabaseGroup.buscarUsuarioPorIDCall.call(
        uid: currentUserUid,
      );
      if (SupabaseGroup.buscarUsuarioPorIDCall.tipo(
            (_model.uSERhOME?.jsonBody ?? ''),
          ) ==
          'admsis') {
        context.pushNamed('SisMenu');
      } else {
        _model.restauranteHome =
            await SupabaseGroup.buscarRestaurantePorUserIDCall.call(
          id: SupabaseGroup.buscarUsuarioPorIDCall.restauranteID(
            (_model.uSERhOME?.jsonBody ?? ''),
          ),
        );
        setState(() {
          FFAppState().restauranteID =
              SupabaseGroup.buscarUsuarioPorIDCall.restauranteID(
            (_model.uSERhOME?.jsonBody ?? ''),
          )!;
          FFAppState().userID = SupabaseGroup.buscarUsuarioPorIDCall.id(
            (_model.uSERhOME?.jsonBody ?? ''),
          )!;
          FFAppState().tipoUser = SupabaseGroup.buscarUsuarioPorIDCall.tipo(
            (_model.uSERhOME?.jsonBody ?? ''),
          )!;
          FFAppState().nomeUser = SupabaseGroup.buscarUsuarioPorIDCall.nome(
            (_model.uSERhOME?.jsonBody ?? ''),
          )!;
          FFAppState().nomeRstaurante =
              SupabaseGroup.buscarRestaurantePorUserIDCall.nome(
            (_model.restauranteHome?.jsonBody ?? ''),
          )!;
        });
      }
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
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            automaticallyImplyLeading: false,
            actions: const [],
            flexibleSpace: FlexibleSpaceBar(
              title: Container(
                width: 500.0,
                decoration: const BoxDecoration(),
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
              Align(
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: FutureBuilder<List<EstabelecimentoRow>>(
                  future: EstabelecimentoTable().querySingleRow(
                    queryFn: (q) => q.eq(
                      'id',
                      FFAppState().restauranteID,
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
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<EstabelecimentoRow> containerEstabelecimentoRowList =
                        snapshot.data!;
                    final containerEstabelecimentoRow =
                        containerEstabelecimentoRowList.isNotEmpty
                            ? containerEstabelecimentoRowList.first
                            : null;
                    return Container(
                      width: 500.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 0.0, 15.0, 0.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.network(
                                            containerEstabelecimentoRow!.logo!,
                                          ).image,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 10.0, 20.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  containerEstabelecimentoRow
                                                      .nome,
                                                  'Cadastre o estabelecimento!',
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaria,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Olá, ',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: const Color(0xFF15981B),
                                                    ),
                                              ),
                                              Text(
                                                FFAppState().nomeUser,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: const Color(0xFF15981B),
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 30.0, 20.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Builder(
                                      builder: (context) => InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (containerEstabelecimentoRow.cadCompleto!) {
                                            context.pushNamed(
                                              'pedidos',
                                              queryParameters: {
                                                'restaurante': serializeParam(
                                                  containerEstabelecimentoRow,
                                                  ParamType.SupabaseRow,
                                                ),
                                              }.withoutNulls,
                                            );
                                          } else {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      const AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: GestureDetector(
                                                    onTap: () => _model
                                                            .unfocusNode
                                                            .canRequestFocus
                                                        ? FocusScope.of(context)
                                                            .requestFocus(_model
                                                                .unfocusNode)
                                                        : FocusScope.of(context)
                                                            .unfocus(),
                                                    child:
                                                        const PopupMenuCadastroWidget(),
                                                  ),
                                                );
                                              },
                                            ).then((value) => setState(() {}));

                                            context.pushNamed(
                                              'E02Estabelecimento',
                                              queryParameters: {
                                                'estabelecimentoID':
                                                    serializeParam(
                                                  containerEstabelecimentoRow
                                                      .id,
                                                  ParamType.int,
                                                ),
                                              }.withoutNulls,
                                            );

                                            return;
                                          }
                                        },
                                        child: Container(
                                          width: 150.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 110.0,
                                                height: 110.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/pedido_(1).png',
                                                    width: 80.0,
                                                    height: 50.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Pedidos',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 18.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Builder(
                                      builder: (context) => InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (containerEstabelecimentoRow.cadCompleto!) {
                                            context.pushNamed(
                                              'Cozinha',
                                              queryParameters: {
                                                'restaurante': serializeParam(
                                                  containerEstabelecimentoRow,
                                                  ParamType.SupabaseRow,
                                                ),
                                              }.withoutNulls,
                                            );
                                          } else {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      const AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: GestureDetector(
                                                    onTap: () => _model
                                                            .unfocusNode
                                                            .canRequestFocus
                                                        ? FocusScope.of(context)
                                                            .requestFocus(_model
                                                                .unfocusNode)
                                                        : FocusScope.of(context)
                                                            .unfocus(),
                                                    child:
                                                        const PopupMenuCadastroWidget(),
                                                  ),
                                                );
                                              },
                                            ).then((value) => setState(() {}));

                                            context.pushNamed(
                                              'E02Estabelecimento',
                                              queryParameters: {
                                                'estabelecimentoID':
                                                    serializeParam(
                                                  containerEstabelecimentoRow
                                                      .id,
                                                  ParamType.int,
                                                ),
                                              }.withoutNulls,
                                            );

                                            return;
                                          }
                                        },
                                        child: Container(
                                          width: 150.0,
                                          decoration: const BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 110.0,
                                                height: 110.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/chefe-de-cozinha_(3).png',
                                                    width: 80.0,
                                                    height: 50.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Cozinha',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 18.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 30.0, 20.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Builder(
                                      builder: (context) => InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (containerEstabelecimentoRow.cadCompleto!) {
                                            context.pushNamed(
                                              'gacom',
                                              queryParameters: {
                                                'restaurante': serializeParam(
                                                  containerEstabelecimentoRow,
                                                  ParamType.SupabaseRow,
                                                ),
                                              }.withoutNulls,
                                            );
                                          } else {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      const AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: GestureDetector(
                                                    onTap: () => _model
                                                            .unfocusNode
                                                            .canRequestFocus
                                                        ? FocusScope.of(context)
                                                            .requestFocus(_model
                                                                .unfocusNode)
                                                        : FocusScope.of(context)
                                                            .unfocus(),
                                                    child:
                                                        const PopupMenuCadastroWidget(),
                                                  ),
                                                );
                                              },
                                            ).then((value) => setState(() {}));

                                            context.pushNamed(
                                              'E02Estabelecimento',
                                              queryParameters: {
                                                'estabelecimentoID':
                                                    serializeParam(
                                                  containerEstabelecimentoRow
                                                      .id,
                                                  ParamType.int,
                                                ),
                                              }.withoutNulls,
                                            );

                                            return;
                                          }
                                        },
                                        child: Container(
                                          width: 150.0,
                                          decoration: const BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 110.0,
                                                height: 110.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/cloche.png',
                                                    width: 80.0,
                                                    height: 50.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Garçons',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 18.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Builder(
                                      builder: (context) => InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (containerEstabelecimentoRow.cadCompleto!) {
                                            context.pushNamed(
                                              'E01Opcoe',
                                              queryParameters: {
                                                'restaurante': serializeParam(
                                                  containerEstabelecimentoRow,
                                                  ParamType.SupabaseRow,
                                                ),
                                              }.withoutNulls,
                                            );
                                          } else {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      const AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: GestureDetector(
                                                    onTap: () => _model
                                                            .unfocusNode
                                                            .canRequestFocus
                                                        ? FocusScope.of(context)
                                                            .requestFocus(_model
                                                                .unfocusNode)
                                                        : FocusScope.of(context)
                                                            .unfocus(),
                                                    child:
                                                        const PopupMenuCadastroWidget(),
                                                  ),
                                                );
                                              },
                                            ).then((value) => setState(() {}));

                                            context.pushNamed(
                                              'E02Estabelecimento',
                                              queryParameters: {
                                                'estabelecimentoID':
                                                    serializeParam(
                                                  containerEstabelecimentoRow
                                                      .id,
                                                  ParamType.int,
                                                ),
                                              }.withoutNulls,
                                            );

                                            return;
                                          }
                                        },
                                        child: Container(
                                          width: 150.0,
                                          decoration: const BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 110.0,
                                                height: 110.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/receita.png',
                                                    width: 50.0,
                                                    height: 50.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Opções',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 18.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 30.0, 20.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (!containerEstabelecimentoRow.cadCompleto!) {
                                          context.pushNamed(
                                            'E02Estabelecimento',
                                            queryParameters: {
                                              'estabelecimentoID':
                                                  serializeParam(
                                                containerEstabelecimentoRow.id,
                                                ParamType.int,
                                              ),
                                            }.withoutNulls,
                                          );
                                        } else {
                                          context.pushNamed(
                                            'E02Estabelecimentotrue',
                                            queryParameters: {
                                              'estabelecimentoID':
                                                  serializeParam(
                                                containerEstabelecimentoRow.id,
                                                ParamType.int,
                                              ),
                                            }.withoutNulls,
                                          );
                                        }
                                      },
                                      child: Container(
                                        width: 150.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 110.0,
                                                height: 110.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/placeholder.png',
                                                    width: 300.0,
                                                    height: 200.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Estabelecimento',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Builder(
                                      builder: (context) => InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (containerEstabelecimentoRow.cadCompleto!) {
                                            context.pushNamed(
                                              'relatorio01',
                                              queryParameters: {
                                                'restaurante': serializeParam(
                                                  containerEstabelecimentoRow,
                                                  ParamType.SupabaseRow,
                                                ),
                                              }.withoutNulls,
                                            );
                                          } else {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      const AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: GestureDetector(
                                                    onTap: () => _model
                                                            .unfocusNode
                                                            .canRequestFocus
                                                        ? FocusScope.of(context)
                                                            .requestFocus(_model
                                                                .unfocusNode)
                                                        : FocusScope.of(context)
                                                            .unfocus(),
                                                    child:
                                                        const PopupMenuCadastroWidget(),
                                                  ),
                                                );
                                              },
                                            ).then((value) => setState(() {}));

                                            context.pushNamed(
                                              'E02Estabelecimento',
                                              queryParameters: {
                                                'estabelecimentoID':
                                                    serializeParam(
                                                  containerEstabelecimentoRow
                                                      .id,
                                                  ParamType.int,
                                                ),
                                              }.withoutNulls,
                                            );

                                            return;
                                          }
                                        },
                                        child: Container(
                                          width: 150.0,
                                          decoration: const BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 110.0,
                                                height: 110.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/e-book.png',
                                                    width: 300.0,
                                                    height: 200.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                '   Histórico   ',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 18.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 30.0, 20.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Builder(
                                      builder: (context) => InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (containerEstabelecimentoRow.cadCompleto!) {
                                            context.pushNamed('E01user01');
                                          } else {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      const AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: GestureDetector(
                                                    onTap: () => _model
                                                            .unfocusNode
                                                            .canRequestFocus
                                                        ? FocusScope.of(context)
                                                            .requestFocus(_model
                                                                .unfocusNode)
                                                        : FocusScope.of(context)
                                                            .unfocus(),
                                                    child:
                                                        const PopupMenuCadastroWidget(),
                                                  ),
                                                );
                                              },
                                            ).then((value) => setState(() {}));

                                            context.pushNamed(
                                              'E02Estabelecimento',
                                              queryParameters: {
                                                'estabelecimentoID':
                                                    serializeParam(
                                                  containerEstabelecimentoRow
                                                      .id,
                                                  ParamType.int,
                                                ),
                                              }.withoutNulls,
                                            );

                                            return;
                                          }
                                        },
                                        child: Container(
                                          width: 150.0,
                                          decoration: const BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 110.0,
                                                height: 110.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/empregado.png',
                                                    width: 300.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fitHeight,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'User',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 18.0,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Builder(
                                      builder: (context) =>
                                          FutureBuilder<List<MesasRow>>(
                                        future: MesasTable().querySingleRow(
                                          queryFn: (q) => q.eq(
                                            'restaurante_id',
                                            containerEstabelecimentoRow.id,
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
                                          List<MesasRow> containerMesasRowList =
                                              snapshot.data!;
                                          final containerMesasRow =
                                              containerMesasRowList.isNotEmpty
                                                  ? containerMesasRowList.first
                                                  : null;
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (containerEstabelecimentoRow.cadCompleto!) {
                                                context.pushNamed(
                                                  'E01Mesas',
                                                  queryParameters: {
                                                    'mesas': serializeParam(
                                                      containerMesasRow,
                                                      ParamType.SupabaseRow,
                                                    ),
                                                    'restaurante':
                                                        serializeParam(
                                                      containerEstabelecimentoRow,
                                                      ParamType.SupabaseRow,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              } else {
                                                await showDialog(
                                                  context: context,
                                                  builder: (dialogContext) {
                                                    return Dialog(
                                                      insetPadding:
                                                          EdgeInsets.zero,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      alignment:
                                                          const AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      child: GestureDetector(
                                                        onTap: () => _model
                                                                .unfocusNode
                                                                .canRequestFocus
                                                            ? FocusScope.of(
                                                                    context)
                                                                .requestFocus(_model
                                                                    .unfocusNode)
                                                            : FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child:
                                                            const PopupMenuCadastroWidget(),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));

                                                context.pushNamed(
                                                  'E02Estabelecimento',
                                                  queryParameters: {
                                                    'estabelecimentoID':
                                                        serializeParam(
                                                      containerEstabelecimentoRow
                                                          .id,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                return;
                                              }
                                            },
                                            child: Container(
                                              width: 150.0,
                                              decoration: const BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 110.0,
                                                    height: 110.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.asset(
                                                        'assets/images/codigo-qr_(1).png',
                                                        width: 300.0,
                                                        height: 200.0,
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Mesas',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
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
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

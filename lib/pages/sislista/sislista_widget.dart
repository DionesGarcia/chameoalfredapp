import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/drawer_a_d_msis/drawer_a_d_msis_widget.dart';
import '/components/editestsis/editestsis_widget.dart';
import '/components/headeradmsis/headeradmsis_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'sislista_model.dart';
export 'sislista_model.dart';

class SislistaWidget extends StatefulWidget {
  const SislistaWidget({super.key});

  @override
  _SislistaWidgetState createState() => _SislistaWidgetState();
}

class _SislistaWidgetState extends State<SislistaWidget> {
  late SislistaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SislistaModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.uSERhOME = await SupabaseGroup.buscarUsuarioPorIDCall.call(
        uid: currentUserUid,
      );
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
      if (FFAppState().tipoUser == 'cliente') {
        context.pushNamed(
          'Cliente1',
          queryParameters: {
            'restauranteID': serializeParam(
              FFAppState().restauranteID,
              ParamType.int,
            ),
            'mesa': serializeParam(
              '0',
              ParamType.String,
            ),
            'user': serializeParam(
              FFAppState().userID,
              ParamType.int,
            ),
          }.withoutNulls,
        );
      }
    });

    _model.textFieldSBController1 ??= TextEditingController();
    _model.textFieldSBFocusNode1 ??= FocusNode();

    _model.textFieldSBController2 ??= TextEditingController();
    _model.textFieldSBFocusNode2 ??= FocusNode();

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
            model: _model.drawerADMsisModel,
            updateCallback: () => setState(() {}),
            child: const DrawerADMsisWidget(),
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
                  model: _model.headeradmsisModel,
                  updateCallback: () => setState(() {}),
                  child: const HeaderadmsisWidget(),
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
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: Container(
              width: 500.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
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
                                      'Empresas',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 100.0,
                                child: TextFormField(
                                  controller: _model.textFieldSBController1,
                                  focusNode: _model.textFieldSBFocusNode1,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelText: 'UF',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Red Hat Display',
                                          color: FlutterFlowTheme.of(context)
                                              .primaria,
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.italic,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Red Hat Display',
                                          color: FlutterFlowTheme.of(context)
                                              .primaria,
                                          fontStyle: FontStyle.italic,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .terceira,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaria,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Red Hat Display',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                  validator: _model
                                      .textFieldSBController1Validator
                                      .asValidator(context),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 0.0, 15.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.textFieldSBController2,
                                    focusNode: _model.textFieldSBFocusNode2,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      labelText: 'Cidade',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Red Hat Display',
                                            color: FlutterFlowTheme.of(context)
                                                .primaria,
                                            fontWeight: FontWeight.normal,
                                            fontStyle: FontStyle.italic,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Red Hat Display',
                                            color: FlutterFlowTheme.of(context)
                                                .primaria,
                                            fontStyle: FontStyle.italic,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .terceira,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primaria,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Red Hat Display',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                    validator: _model
                                        .textFieldSBController2Validator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.sisrestaurantestart1 =
                                      await EstabelecimentoTable().insert({
                                    'nome': 'Restaurante sem nome',
                                    'cpf': '0',
                                    'cep': '0',
                                    'rua': '0',
                                    'cidade': '0',
                                    'estado': '0',
                                    'numero': '0',
                                    'tel': '0',
                                    'cel': '0',
                                    'email': '0',
                                    'instagram': '0',
                                    'tiktok': '0',
                                    'txEmbalagem': 0.0,
                                    'pagaAPP': false,
                                    'banner1': '',
                                    'banner2': '',
                                    'banner3': '',
                                    'cadCompleto': false,
                                    'logo': '',
                                    'bairro': '',
                                    'cnpj': '0',
                                    'locationEst': '0,0',
                                  });

                                  context.pushNamed(
                                    'sisestabelecimento',
                                    queryParameters: {
                                      'estabelecimentoID': serializeParam(
                                        _model.sisrestaurantestart1?.id,
                                        ParamType.int,
                                      ),
                                    }.withoutNulls,
                                  );

                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.add_circle,
                                  color: FlutterFlowTheme.of(context).secundria,
                                  size: 48.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 25.0, 15.0, 25.0),
                            child: FutureBuilder<List<EstabelecimentoRow>>(
                              future: EstabelecimentoTable().queryRows(
                                queryFn: (q) => q,
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
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<EstabelecimentoRow>
                                    listViewEstabelecimentoRowList =
                                    snapshot.data!;
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  itemCount:
                                      listViewEstabelecimentoRowList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewEstabelecimentoRow =
                                        listViewEstabelecimentoRowList[
                                            listViewIndex];
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
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
                                                child: EditestsisWidget(
                                                  restaurante:
                                                      listViewEstabelecimentoRow,
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Flexible(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 10.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Flexible(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              listViewEstabelecimentoRow
                                                                  .nome,
                                                              '0',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Flexible(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              listViewEstabelecimentoRow
                                                                  .cidade,
                                                              '0',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Flexible(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Text(
                                                            '/',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Flexible(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              listViewEstabelecimentoRow
                                                                  .estado,
                                                              '0',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Divider(
                                                    thickness: 1.0,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 10.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.more_vert,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                  ],
                                                ),
                                                Divider(
                                                  thickness: 1.0,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
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
      ),
    );
  }
}

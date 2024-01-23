import '/backend/supabase/supabase.dart';
import '/components/drawer_a_d_m/drawer_a_d_m_widget.dart';
import '/components/e01_pedido_cat/e01_pedido_cat_widget.dart';
import '/components/edit_pedido/edit_pedido_widget.dart';
import '/components/header_empresa/header_empresa_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'e01_opcoe_model.dart';
export 'e01_opcoe_model.dart';

class E01OpcoeWidget extends StatefulWidget {
  const E01OpcoeWidget({
    super.key,
    required this.restaurante,
  });

  final EstabelecimentoRow? restaurante;

  @override
  _E01OpcoeWidgetState createState() => _E01OpcoeWidgetState();
}

class _E01OpcoeWidgetState extends State<E01OpcoeWidget>
    with TickerProviderStateMixin {
  late E01OpcoeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => E01OpcoeModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 1,
    )..addListener(() => setState(() {}));
    _model.textFieldSBController ??= TextEditingController();
    _model.textFieldSBFocusNode ??= FocusNode();

    _model.descController ??= TextEditingController();
    _model.descFocusNode ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController5 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController6 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textController7 ??= TextEditingController();
    _model.textFieldFocusNode5 ??= FocusNode();

    _model.textField000000000Controller ??= TextEditingController();
    _model.textField000000000FocusNode ??= FocusNode();

    _model.textFieldDescController ??= TextEditingController();
    _model.textFieldDescFocusNode ??= FocusNode();

    _model.textFieldValueController ??= TextEditingController();
    _model.textFieldValueFocusNode ??= FocusNode();

    _model.textFieldPesController ??= TextEditingController();
    _model.textFieldPesFocusNode ??= FocusNode();

    _model.textController12 ??= TextEditingController();
    _model.textFieldFocusNode6 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          _model.textController3?.text = '0';
          _model.textController4?.text = '0';
          _model.textController5?.text = '0';
          _model.textController6?.text = '0';
          _model.textController7?.text = '0';
        }));
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
            child: Container(
              width: 600.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
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
                              'Conf. Opções',
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
                          child: TabBar(
                            labelColor: FlutterFlowTheme.of(context).primaria,
                            unselectedLabelColor:
                                FlutterFlowTheme.of(context).secundria,
                            labelStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 14.0,
                                ),
                            unselectedLabelStyle: const TextStyle(),
                            indicatorColor:
                                FlutterFlowTheme.of(context).primaria,
                            padding: const EdgeInsets.all(4.0),
                            tabs: const [
                              Tab(
                                text: 'CADASTRAR',
                              ),
                              Tab(
                                text: 'CADASTRADOS',
                              ),
                            ],
                            controller: _model.tabBarController,
                            onTap: (i) async {
                              [() async {}, () async {}][i]();
                            },
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _model.tabBarController,
                            children: [
                              SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Flexible(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (_model.hide == '00')
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 20.0, 15.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Flexible(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: FutureBuilder<
                                                          List<CategoriaRow>>(
                                                        future: CategoriaTable()
                                                            .queryRows(
                                                          queryFn: (q) => q
                                                              .eq(
                                                                'restaurante_id',
                                                                widget
                                                                    .restaurante
                                                                    ?.id,
                                                              )
                                                              .order('nome',
                                                                  ascending:
                                                                      true),
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
                                                          List<CategoriaRow>
                                                              dropDownCategoriaRowList =
                                                              snapshot.data!;
                                                          return FlutterFlowDropDown<
                                                              String>(
                                                            controller: _model
                                                                    .dropDownValueController1 ??=
                                                                FormFieldController<
                                                                        String>(
                                                                    null),
                                                            options:
                                                                dropDownCategoriaRowList
                                                                    .map((e) =>
                                                                        e.nome)
                                                                    .withoutNulls
                                                                    .toList(),
                                                            onChanged: (val) =>
                                                                setState(() =>
                                                                    _model.dropDownValue1 =
                                                                        val),
                                                            width: 250.0,
                                                            height: 50.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                            hintText:
                                                                'Categoria',
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
                                                                .primaryBackground,
                                                            elevation: 0.0,
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secundria,
                                                            borderWidth: 1.0,
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
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await showModalBottomSheet(
                                                          isScrollControlled:
                                                              true,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          enableDrag: false,
                                                          context: context,
                                                          builder: (context) {
                                                            return GestureDetector(
                                                              onTap: () => _model
                                                                      .unfocusNode
                                                                      .canRequestFocus
                                                                  ? FocusScope.of(
                                                                          context)
                                                                      .requestFocus(
                                                                          _model
                                                                              .unfocusNode)
                                                                  : FocusScope.of(
                                                                          context)
                                                                      .unfocus(),
                                                              child: Padding(
                                                                padding: MediaQuery
                                                                    .viewInsetsOf(
                                                                        context),
                                                                child:
                                                                    E01PedidoCatWidget(
                                                                  restaurante:
                                                                      widget
                                                                          .restaurante!,
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            safeSetState(
                                                                () {}));
                                                      },
                                                      child: Icon(
                                                        Icons
                                                            .add_circle_outline,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaria,
                                                        size: 35.0,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          if (_model.dropDownValue1 != null &&
                                              _model.dropDownValue1 != '')
                                            SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                15.0,
                                                                15.0,
                                                                15.0,
                                                                0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Flexible(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets.all(
                                                                    15.0),
                                                            child: FutureBuilder<
                                                                List<
                                                                    CategoriaRow>>(
                                                              future: CategoriaTable()
                                                                  .querySingleRow(
                                                                queryFn: (q) =>
                                                                    q.eq(
                                                                  'nome',
                                                                  _model
                                                                      .dropDownValue1,
                                                                ),
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          CircularProgressIndicator(
                                                                        valueColor:
                                                                            AlwaysStoppedAnimation<Color>(
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<CategoriaRow>
                                                                    rowCategoriaRowList =
                                                                    snapshot
                                                                        .data!;
                                                                final rowCategoriaRow =
                                                                    rowCategoriaRowList
                                                                            .isNotEmpty
                                                                        ? rowCategoriaRowList
                                                                            .first
                                                                        : null;
                                                                return Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          80.0,
                                                                      height:
                                                                          80.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            child:
                                                                                Image.network(
                                                                              rowCategoriaRow!.imagem!,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.end,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Text(
                                                                                  valueOrDefault<String>(
                                                                                    rowCategoriaRow.nome,
                                                                                    '0',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Readex Pro',
                                                                                        color: const Color(0xFFA70000),
                                                                                        fontSize: 20.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  FutureBuilder<List<PratosRow>>(
                                                                                    future: PratosTable().queryRows(
                                                                                      queryFn: (q) => q.eq(
                                                                                        'categoria_id',
                                                                                        rowCategoriaRow.id,
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
                                                                                      List<PratosRow> textPratosRowList = snapshot.data!;
                                                                                      return Text(
                                                                                        textPratosRowList.length.toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Readex Pro',
                                                                                              color: FlutterFlowTheme.of(context).success,
                                                                                              decoration: TextDecoration.underline,
                                                                                            ),
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                    child: FutureBuilder<List<PratosRow>>(
                                                                                      future: PratosTable().queryRows(
                                                                                        queryFn: (q) => q.eq(
                                                                                          'id',
                                                                                          rowCategoriaRow.id,
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
                                                                                        List<PratosRow> textPratosRowList = snapshot.data!;
                                                                                        return Text(
                                                                                          textPratosRowList.length >= 2 ? 'Cadastros' : 'Cadastro',
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Readex Pro',
                                                                                                color: FlutterFlowTheme.of(context).success,
                                                                                                decoration: TextDecoration.underline,
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
                                                                  ],
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                15.0,
                                                                15.0,
                                                                15.0,
                                                                0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: TextFormField(
                                                            controller: _model
                                                                .textFieldSBController,
                                                            focusNode: _model
                                                                .textFieldSBFocusNode,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              isDense: true,
                                                              labelText:
                                                                  'Subcategoria',
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Red Hat Display',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaria,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                        fontStyle:
                                                                            FontStyle.italic,
                                                                      ),
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Red Hat Display',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaria,
                                                                        fontStyle:
                                                                            FontStyle.italic,
                                                                      ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .terceira,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaria,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Red Hat Display',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                            validator: _model
                                                                .textFieldSBControllerValidator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                15.0,
                                                                15.0,
                                                                15.0,
                                                                0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: TextFormField(
                                                            controller: _model
                                                                .descController,
                                                            focusNode: _model
                                                                .descFocusNode,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              isDense: true,
                                                              labelText:
                                                                  'Descrição',
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Red Hat Display',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaria,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                        fontStyle:
                                                                            FontStyle.italic,
                                                                      ),
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Red Hat Display',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaria,
                                                                        fontStyle:
                                                                            FontStyle.italic,
                                                                      ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .terceira,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaria,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Red Hat Display',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                ),
                                                            maxLines: 3,
                                                            validator: _model
                                                                .descControllerValidator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  FutureBuilder<
                                                      List<CategoriaRow>>(
                                                    future: CategoriaTable()
                                                        .querySingleRow(
                                                      queryFn: (q) => q.eq(
                                                        'nome',
                                                        _model.dropDownValue1,
                                                      ),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<CategoriaRow>
                                                          columnCategoriaRowList =
                                                          snapshot.data!;
                                                      final columnCategoriaRow =
                                                          columnCategoriaRowList
                                                                  .isNotEmpty
                                                              ? columnCategoriaRowList
                                                                  .first
                                                              : null;
                                                      return Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        15.0,
                                                                        15.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                if (!columnCategoriaRow!
                                                                        .pizza! &&
                                                                    !columnCategoriaRow.rodizio!)
                                                                  Flexible(
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        Flexible(
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                200.0,
                                                                            decoration:
                                                                                const BoxDecoration(),
                                                                            child:
                                                                                SizedBox(
                                                                              width: 150.0,
                                                                              child: TextFormField(
                                                                                controller: _model.textController3,
                                                                                focusNode: _model.textFieldFocusNode1,
                                                                                obscureText: false,
                                                                                decoration: InputDecoration(
                                                                                  isDense: true,
                                                                                  labelText: 'Valor',
                                                                                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        fontFamily: 'Red Hat Display',
                                                                                        color: FlutterFlowTheme.of(context).primaria,
                                                                                        fontWeight: FontWeight.normal,
                                                                                      ),
                                                                                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        fontFamily: 'Red Hat Display',
                                                                                      ),
                                                                                  enabledBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).terceira,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  focusedBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).primaria,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  errorBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  focusedErrorBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Red Hat Display',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                validator: _model.textController3Validator.asValidator(context),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              if (!columnCategoriaRow.pizza! &&
                                                                  !columnCategoriaRow.rodizio!)
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          15.0,
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
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              SizedBox(
                                                                                width: 200.0,
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    SwitchListTile.adaptive(
                                                                                      value: _model.switchListTileValue ??= false,
                                                                                      onChanged: (newValue) async {
                                                                                        setState(() => _model.switchListTileValue = newValue);
                                                                                      },
                                                                                      title: Text(
                                                                                        'Permitir',
                                                                                        style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                              fontFamily: 'Outfit',
                                                                                              color: FlutterFlowTheme.of(context).primaria,
                                                                                              fontSize: 16.0,
                                                                                              fontWeight: FontWeight.normal,
                                                                                            ),
                                                                                      ),
                                                                                      subtitle: Text(
                                                                                        '1/2 meia',
                                                                                        style: FlutterFlowTheme.of(context).labelMedium,
                                                                                      ),
                                                                                      tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      activeColor: FlutterFlowTheme.of(context).primary,
                                                                                      activeTrackColor: FlutterFlowTheme.of(context).accent1,
                                                                                      dense: false,
                                                                                      controlAffinity: ListTileControlAffinity.trailing,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      if (_model
                                                                              .switchListTileValue ??
                                                                          true)
                                                                        FutureBuilder<
                                                                            List<CategoriaRow>>(
                                                                          future:
                                                                              CategoriaTable().querySingleRow(
                                                                            queryFn: (q) =>
                                                                                q.eq(
                                                                              'nome',
                                                                              _model.dropDownValue1,
                                                                            ),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                            List<CategoriaRow>
                                                                                columnCategoriaRowList =
                                                                                snapshot.data!;
                                                                            final columnCategoriaRow = columnCategoriaRowList.isNotEmpty
                                                                                ? columnCategoriaRowList.first
                                                                                : null;
                                                                            return Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              children: [
                                                                                Container(
                                                                                  decoration: const BoxDecoration(),
                                                                                  child: SizedBox(
                                                                                    width: 150.0,
                                                                                    child: TextFormField(
                                                                                      controller: _model.textController4,
                                                                                      focusNode: _model.textFieldFocusNode2,
                                                                                      obscureText: false,
                                                                                      decoration: InputDecoration(
                                                                                        isDense: true,
                                                                                        labelText: 'Valor meia',
                                                                                        labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Red Hat Display',
                                                                                              color: FlutterFlowTheme.of(context).primaria,
                                                                                              fontWeight: FontWeight.normal,
                                                                                            ),
                                                                                        hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              fontFamily: 'Red Hat Display',
                                                                                            ),
                                                                                        enabledBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).terceira,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        focusedBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).primaria,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        errorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                          borderSide: BorderSide(
                                                                                            color: FlutterFlowTheme.of(context).error,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Red Hat Display',
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                          ),
                                                                                      validator: _model.textController4Validator.asValidator(context),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            );
                                                                          },
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        15.0,
                                                                        15.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                if (columnCategoriaRow
                                                                        .pizza ??
                                                                    true)
                                                                  Flexible(
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          15.0,
                                                                          15.0,
                                                                          15.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                              child: SizedBox(
                                                                                width: 150.0,
                                                                                child: TextFormField(
                                                                                  controller: _model.textController5,
                                                                                  focusNode: _model.textFieldFocusNode3,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    isDense: true,
                                                                                    labelText: '1 (inteira)',
                                                                                    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Red Hat Display',
                                                                                          color: FlutterFlowTheme.of(context).primaria,
                                                                                          fontWeight: FontWeight.normal,
                                                                                        ),
                                                                                    hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Red Hat Display',
                                                                                        ),
                                                                                    enabledBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).terceira,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).primaria,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    errorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedErrorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Red Hat Display',
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                  keyboardType: TextInputType.emailAddress,
                                                                                  validator: _model.textController5Validator.asValidator(context),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                              child: SizedBox(
                                                                                width: 150.0,
                                                                                child: TextFormField(
                                                                                  controller: _model.textController6,
                                                                                  focusNode: _model.textFieldFocusNode4,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    isDense: true,
                                                                                    labelText: '1/2 (meia)',
                                                                                    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Red Hat Display',
                                                                                          color: FlutterFlowTheme.of(context).primaria,
                                                                                          fontWeight: FontWeight.normal,
                                                                                        ),
                                                                                    hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Red Hat Display',
                                                                                        ),
                                                                                    enabledBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).terceira,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).primaria,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    errorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedErrorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Red Hat Display',
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                  keyboardType: TextInputType.emailAddress,
                                                                                  validator: _model.textController6Validator.asValidator(context),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                              child: SizedBox(
                                                                                width: 150.0,
                                                                                child: TextFormField(
                                                                                  controller: _model.textController7,
                                                                                  focusNode: _model.textFieldFocusNode5,
                                                                                  obscureText: false,
                                                                                  decoration: InputDecoration(
                                                                                    isDense: true,
                                                                                    labelText: '1/3',
                                                                                    labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Red Hat Display',
                                                                                          color: FlutterFlowTheme.of(context).primaria,
                                                                                          fontWeight: FontWeight.normal,
                                                                                        ),
                                                                                    hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                          fontFamily: 'Red Hat Display',
                                                                                        ),
                                                                                    enabledBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).terceira,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).primaria,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    errorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    focusedErrorBorder: OutlineInputBorder(
                                                                                      borderSide: BorderSide(
                                                                                        color: FlutterFlowTheme.of(context).error,
                                                                                        width: 1.0,
                                                                                      ),
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Red Hat Display',
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                  keyboardType: TextInputType.emailAddress,
                                                                                  validator: _model.textController7Validator.asValidator(context),
                                                                                ),
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
                                                        ],
                                                      );
                                                    },
                                                  ),
                                                  if (_model.hide == '00')
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  30.0,
                                                                  0.0,
                                                                  30.0),
                                                      child: FutureBuilder<
                                                          List<CategoriaRow>>(
                                                        future: CategoriaTable()
                                                            .querySingleRow(
                                                          queryFn: (q) => q.eq(
                                                            'nome',
                                                            _model
                                                                .dropDownValue1,
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
                                                          List<CategoriaRow>
                                                              buttonCategoriaRowList =
                                                              snapshot.data!;
                                                          final buttonCategoriaRow =
                                                              buttonCategoriaRowList
                                                                      .isNotEmpty
                                                                  ? buttonCategoriaRowList
                                                                      .first
                                                                  : null;
                                                          return FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              if (buttonCategoriaRow
                                                                      ?.pizza ==
                                                                  false) {
                                                                if (buttonCategoriaRow!
                                                                    .rodizio!) {
                                                                  _model.prato2 =
                                                                      await PratosTable()
                                                                          .insert({
                                                                    'categoria_id':
                                                                        buttonCategoriaRow
                                                                            .id,
                                                                    'nome': _model
                                                                        .textFieldSBController
                                                                        .text,
                                                                    'descricao':
                                                                        _model
                                                                            .descController
                                                                            .text,
                                                                    'aceitaMeia':
                                                                        false,
                                                                    'valorMeia':
                                                                        valueOrDefault<
                                                                            double>(
                                                                      buttonCategoriaRow
                                                                          .valorRodizioCrianca,
                                                                      0.0,
                                                                    ),
                                                                    'valor':
                                                                        buttonCategoriaRow
                                                                            .valorRodizio,
                                                                    'pedidoFinalizado':
                                                                        false,
                                                                    'restaurante_id':
                                                                        widget
                                                                            .restaurante
                                                                            ?.id,
                                                                    'Pizza':
                                                                        false,
                                                                    'rodizio':
                                                                        true,
                                                                  });
                                                                } else {
                                                                  _model.prato1 =
                                                                      await PratosTable()
                                                                          .insert({
                                                                    'categoria_id':
                                                                        buttonCategoriaRow
                                                                            .id,
                                                                    'nome': _model
                                                                        .textFieldSBController
                                                                        .text,
                                                                    'descricao':
                                                                        _model
                                                                            .descController
                                                                            .text,
                                                                    'aceitaMeia':
                                                                        _model
                                                                            .switchListTileValue,
                                                                    'pedidoFinalizado':
                                                                        false,
                                                                    'restaurante_id':
                                                                        widget
                                                                            .restaurante
                                                                            ?.id,
                                                                    'Pizza':
                                                                        buttonCategoriaRow
                                                                            .pizza,
                                                                    'valor':
                                                                        valueOrDefault<
                                                                            double>(
                                                                      functions.virgulaEMponto(_model
                                                                          .textController3
                                                                          .text),
                                                                      0.0,
                                                                    ),
                                                                    'valorMeia':
                                                                        valueOrDefault<
                                                                            double>(
                                                                      functions.virgulaEMponto(_model
                                                                          .textController4
                                                                          .text),
                                                                      0.0,
                                                                    ),
                                                                    'rodizio':
                                                                        false,
                                                                  });
                                                                }
                                                              } else {
                                                                _model.prato =
                                                                    await PratosTable()
                                                                        .insert({
                                                                  'categoria_id':
                                                                      buttonCategoriaRow
                                                                          ?.id,
                                                                  'nome': _model
                                                                      .textFieldSBController
                                                                      .text,
                                                                  'descricao':
                                                                      _model
                                                                          .descController
                                                                          .text,
                                                                  'aceitaMeia':
                                                                      false,
                                                                  'valorMeia': functions
                                                                      .virgulaEMponto(_model
                                                                          .textController4
                                                                          .text),
                                                                  'valor': 0.0,
                                                                  'pedidoFinalizado':
                                                                      false,
                                                                  'restaurante_id':
                                                                      widget
                                                                          .restaurante
                                                                          ?.id,
                                                                  'Pizza':
                                                                      buttonCategoriaRow
                                                                          ?.pizza,
                                                                  'pizza1':
                                                                      valueOrDefault<
                                                                          double>(
                                                                    functions.virgulaEMponto(_model
                                                                        .textController5
                                                                        .text),
                                                                    0.0,
                                                                  ),
                                                                  'pizza2':
                                                                      valueOrDefault<
                                                                          double>(
                                                                    functions.virgulaEMponto(_model
                                                                        .textController6
                                                                        .text),
                                                                    0.0,
                                                                  ),
                                                                  'pizza3':
                                                                      valueOrDefault<
                                                                          double>(
                                                                    functions.virgulaEMponto(_model
                                                                        .textController7
                                                                        .text),
                                                                    0.0,
                                                                  ),
                                                                  'rodizio':
                                                                      false,
                                                                });
                                                              }

                                                              setState(() {
                                                                _model.hide =
                                                                    '01';
                                                              });
                                                              await HistricoTable()
                                                                  .insert({
                                                                'restaurante_id':
                                                                    FFAppState()
                                                                        .restauranteID,
                                                                'ação':
                                                                    'Criou item cardápio',
                                                                'data': supaSerialize<
                                                                        DateTime>(
                                                                    getCurrentTimestamp),
                                                                'filtro':
                                                                    'acessos',
                                                                'Usuario':
                                                                    FFAppState()
                                                                        .nomeUser,
                                                              });

                                                              setState(() {});
                                                            },
                                                            text: 'Salvar',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 160.0,
                                                              height: 40.0,
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(0.0),
                                                              iconPadding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: const Color(
                                                                  0xFFA70000),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            19.0,
                                                                      ),
                                                              elevation: 3.0,
                                                              borderSide:
                                                                  const BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
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
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        if (_model.hide != '00')
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 20.0, 15.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Guarnição ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        if (_model.hide != '00')
                                          const Divider(
                                            thickness: 1.0,
                                            color: Color(0x83DA2E1A),
                                          ),
                                        if (_model.hide == '01')
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 15.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(15.0, 0.0, 15.0,
                                                          15.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Flexible(
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        16.0),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secundria,
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        8.0,
                                                                        0.0),
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                  .textField000000000Controller,
                                                              focusNode: _model
                                                                  .textField000000000FocusNode,
                                                              autofocus: true,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                labelStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium,
                                                                hintStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium,
                                                                enabledBorder:
                                                                    InputBorder
                                                                        .none,
                                                                focusedBorder:
                                                                    InputBorder
                                                                        .none,
                                                                errorBorder:
                                                                    InputBorder
                                                                        .none,
                                                                focusedErrorBorder:
                                                                    InputBorder
                                                                        .none,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                              validator: _model
                                                                  .textField000000000ControllerValidator
                                                                  .asValidator(
                                                                      context),
                                                            ),
                                                          ),
                                                        ),
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
                                                              MainAxisSize.min,
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
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                var shouldSetState =
                                                                    false;
                                                                setState(() {
                                                                  _model.hideguarnicao =
                                                                      _model.hideguarnicao +
                                                                          1;
                                                                });
                                                                setState(() {
                                                                  _model.descrip =
                                                                      _model
                                                                          .textField000000000Controller
                                                                          .text;
                                                                });
                                                                if (_model.descrip !=
                                                                        '') {
                                                                  _model.apiResultInserirGarnicao =
                                                                      await GuarnicaoTable()
                                                                          .insert({
                                                                    'prato_id':
                                                                        _model
                                                                            .prato
                                                                            ?.id,
                                                                    'nome': _model
                                                                        .textField000000000Controller
                                                                        .text,
                                                                    'adicional':
                                                                        false,
                                                                  });
                                                                  shouldSetState =
                                                                      true;
                                                                  setState(() {
                                                                    _model.hideLit =
                                                                        true;
                                                                  });
                                                                  setState(() {
                                                                    _model
                                                                        .textField000000000Controller
                                                                        ?.clear();
                                                                  });
                                                                  setState(() =>
                                                                      _model.requestCompleter2 =
                                                                          null);
                                                                  await _model
                                                                      .waitForRequestCompleted2();
                                                                  if (shouldSetState) {
                                                                    setState(
                                                                        () {});
                                                                  }
                                                                  return;
                                                                } else {
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        content:
                                                                            const Text('Preencha o nome da guarnição.'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                const Text('Ok'),
                                                                          ),
                                                                        ],
                                                                      );
                                                                    },
                                                                  );
                                                                  if (shouldSetState) {
                                                                    setState(
                                                                        () {});
                                                                  }
                                                                  return;
                                                                }

                                                                if (shouldSetState) {
                                                                  setState(
                                                                      () {});
                                                                }
                                                              },
                                                              child: const Icon(
                                                                Icons
                                                                    .add_circle_outline,
                                                                color: Color(
                                                                    0xFF33C3A9),
                                                                size: 48.0,
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
                                        if (_model.hideLit)
                                          Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: FutureBuilder<
                                                List<GuarnicaoRow>>(
                                              future: (_model
                                                          .requestCompleter2 ??=
                                                      Completer<
                                                          List<GuarnicaoRow>>()
                                                        ..complete(
                                                            GuarnicaoTable()
                                                                .queryRows(
                                                          queryFn: (q) => q
                                                              .eq(
                                                                'prato_id',
                                                                _model
                                                                    .prato?.id,
                                                              )
                                                              .eq(
                                                                'adicional',
                                                                false,
                                                              ),
                                                        )))
                                                  .future,
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
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<GuarnicaoRow>
                                                    listViewGuarnicaoRowList =
                                                    snapshot.data!;
                                                return ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount:
                                                      listViewGuarnicaoRowList
                                                          .length,
                                                  itemBuilder:
                                                      (context, listViewIndex) {
                                                    final listViewGuarnicaoRow =
                                                        listViewGuarnicaoRowList[
                                                            listViewIndex];
                                                    return Container(
                                                      height: 40.0,
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              listViewGuarnicaoRow
                                                                  .nome,
                                                              '00',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: const Color(
                                                                      0xFF007300),
                                                                ),
                                                          ),
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              var confirmDialogResponse =
                                                                  await showDialog<
                                                                          bool>(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (alertDialogContext) {
                                                                          return AlertDialog(
                                                                            title:
                                                                                const Text('Atenção!'),
                                                                            content:
                                                                                const Text('Deseja excluir este item?'),
                                                                            actions: [
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                child: const Text('Não'),
                                                                              ),
                                                                              TextButton(
                                                                                onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                child: const Text('Sim'),
                                                                              ),
                                                                            ],
                                                                          );
                                                                        },
                                                                      ) ??
                                                                      false;
                                                              if (confirmDialogResponse) {
                                                                await GuarnicaoTable()
                                                                    .delete(
                                                                  matchingRows:
                                                                      (rows) =>
                                                                          rows.eq(
                                                                    'id',
                                                                    listViewGuarnicaoRow
                                                                        .id,
                                                                  ),
                                                                );
                                                                setState(() =>
                                                                    _model.requestCompleter2 =
                                                                        null);
                                                                await _model
                                                                    .waitForRequestCompleted2();
                                                              } else {
                                                                return;
                                                              }
                                                            },
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .trashAlt,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaria,
                                                              size: 24.0,
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
                                        if (_model.hide == '01')
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 30.0, 0.0, 30.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                setState(() {
                                                  _model.hide = '02';
                                                  _model.hideLit = false;
                                                });
                                              },
                                              text: 'Salvar',
                                              options: FFButtonOptions(
                                                width: 160.0,
                                                height: 40.0,
                                                padding: const EdgeInsets.all(0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: const Color(0xFFA70000),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          fontSize: 19.0,
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
                                    if (_model.hide == '02')
                                      Flexible(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      15.0, 20.0, 15.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Guarnição  adicionais',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 12.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const Divider(
                                              thickness: 1.0,
                                              color: Color(0x83DA2E1A),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 15.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  if (_model.hide == '02')
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  15.0,
                                                                  0.0,
                                                                  15.0,
                                                                  15.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          Flexible(
                                                            flex: 2,
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16.0),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .textFieldDescController,
                                                                  focusNode: _model
                                                                      .textFieldDescFocusNode,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelText:
                                                                        ' ',
                                                                    labelStyle:
                                                                        FlutterFlowTheme.of(context)
                                                                            .labelMedium,
                                                                    hintText:
                                                                        ' Descrição',
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium,
                                                                    enabledBorder:
                                                                        InputBorder
                                                                            .none,
                                                                    focusedBorder:
                                                                        InputBorder
                                                                            .none,
                                                                    errorBorder:
                                                                        InputBorder
                                                                            .none,
                                                                    focusedErrorBorder:
                                                                        InputBorder
                                                                            .none,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                  validator: _model
                                                                      .textFieldDescControllerValidator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Flexible(
                                                            flex: 1,
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              16.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model
                                                                            .textFieldValueController,
                                                                    focusNode:
                                                                        _model
                                                                            .textFieldValueFocusNode,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      hintText:
                                                                          ' Valor (R\$)',
                                                                      hintStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      enabledBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      errorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedErrorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium,
                                                                    validator: _model
                                                                        .textFieldValueControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Flexible(
                                                            flex: 1,
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              16.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model
                                                                            .textFieldPesController,
                                                                    focusNode:
                                                                        _model
                                                                            .textFieldPesFocusNode,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      hintText:
                                                                          ' Peso (g)',
                                                                      hintStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMedium,
                                                                      enabledBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      errorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                      focusedErrorBorder:
                                                                          InputBorder
                                                                              .none,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium,
                                                                    validator: _model
                                                                        .textFieldPesControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      var shouldSetState =
                                                          false;
                                                      setState(() {
                                                        _model.desc = _model
                                                            .textFieldDescController
                                                            .text;
                                                        _model.valor = double
                                                            .tryParse(_model
                                                                .textFieldValueController
                                                                .text);
                                                        _model.pedo = _model
                                                            .textFieldPesController
                                                            .text;
                                                      });
                                                      if (_model.descrip !=
                                                              '') {
                                                        _model.apiResultInserirGarnicaoAd =
                                                            await GuarnicaoTable()
                                                                .insert({
                                                          'nome': _model
                                                              .textFieldDescController
                                                              .text,
                                                          'valor': functions
                                                              .virgulaEMponto(_model
                                                                  .textFieldValueController
                                                                  .text),
                                                          'peso': _model
                                                              .textFieldPesController
                                                              .text,
                                                          'adicional': true,
                                                          'prato_id':
                                                              _model.prato?.id,
                                                        });
                                                        shouldSetState = true;
                                                        setState(() {
                                                          _model.hideLit = true;
                                                        });
                                                        setState(() {
                                                          _model
                                                              .textFieldDescController
                                                              ?.clear();
                                                          _model
                                                              .textFieldValueController
                                                              ?.clear();
                                                          _model
                                                              .textFieldPesController
                                                              ?.clear();
                                                        });
                                                        setState(() => _model
                                                                .requestCompleter1 =
                                                            null);
                                                        await _model
                                                            .waitForRequestCompleted1();
                                                        if (shouldSetState) {
                                                          setState(() {});
                                                        }
                                                        return;
                                                      } else {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              content: const Text(
                                                                  'Preencha o campo descrição.'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext),
                                                                  child: const Text(
                                                                      'Ok'),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        );
                                                        if (shouldSetState) {
                                                          setState(() {});
                                                        }
                                                        return;
                                                      }

                                                      if (shouldSetState) {
                                                        setState(() {});
                                                      }
                                                    },
                                                    child: const Icon(
                                                      Icons.add_circle_outline,
                                                      color: Color(0xFF33C3A9),
                                                      size: 48.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            ListView(
                                              padding: EdgeInsets.zero,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    if (_model.hideLit)
                                                      Padding(
                                                        padding: const EdgeInsets.all(
                                                            16.0),
                                                        child: FutureBuilder<
                                                            List<GuarnicaoRow>>(
                                                          future: (_model
                                                                      .requestCompleter1 ??=
                                                                  Completer<
                                                                      List<
                                                                          GuarnicaoRow>>()
                                                                    ..complete(
                                                                        GuarnicaoTable()
                                                                            .queryRows(
                                                                      queryFn:
                                                                          (q) => q
                                                                              .eq(
                                                                                'prato_id',
                                                                                _model.prato?.id,
                                                                              )
                                                                              .eq(
                                                                                'adicional',
                                                                                true,
                                                                              ),
                                                                    )))
                                                              .future,
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
                                                            List<GuarnicaoRow>
                                                                listViewGuarnicaoRowList =
                                                                snapshot.data!;
                                                            return ListView
                                                                .builder(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  listViewGuarnicaoRowList
                                                                      .length,
                                                              itemBuilder: (context,
                                                                  listViewIndex) {
                                                                final listViewGuarnicaoRow =
                                                                    listViewGuarnicaoRowList[
                                                                        listViewIndex];
                                                                return Container(
                                                                  height: 40.0,
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Flexible(
                                                                        flex: 3,
                                                                        child:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            listViewGuarnicaoRow.nome,
                                                                            '0',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                color: const Color(0xFF007300),
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                10.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              valueOrDefault<String>(
                                                                                formatNumber(
                                                                                  listViewGuarnicaoRow.valor,
                                                                                  formatType: FormatType.custom,
                                                                                  currency: 'R\$ ',
                                                                                  format: '##0.00',
                                                                                  locale: 'pt_BR',
                                                                                ),
                                                                                '00',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: const Color(0xFF007300),
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                10.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              valueOrDefault<String>(
                                                                                listViewGuarnicaoRow.peso,
                                                                                '00',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: const Color(0xFF007300),
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              var confirmDialogResponse = await showDialog<bool>(
                                                                                    context: context,
                                                                                    builder: (alertDialogContext) {
                                                                                      return AlertDialog(
                                                                                        title: const Text('Atenção!'),
                                                                                        content: const Text('Deseja excluir este item?'),
                                                                                        actions: [
                                                                                          TextButton(
                                                                                            onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                            child: const Text('Não'),
                                                                                          ),
                                                                                          TextButton(
                                                                                            onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                            child: const Text('Sim'),
                                                                                          ),
                                                                                        ],
                                                                                      );
                                                                                    },
                                                                                  ) ??
                                                                                  false;
                                                                              if (confirmDialogResponse) {
                                                                                await GuarnicaoTable().delete(
                                                                                  matchingRows: (rows) => rows.eq(
                                                                                    'id',
                                                                                    listViewGuarnicaoRow.id,
                                                                                  ),
                                                                                );
                                                                                setState(() => _model.requestCompleter1 = null);
                                                                                await _model.waitForRequestCompleted1();
                                                                              } else {
                                                                                return;
                                                                              }
                                                                            },
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.trashAlt,
                                                                              color: FlutterFlowTheme.of(context).primaria,
                                                                              size: 24.0,
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
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 30.0, 0.0, 30.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  context.pushNamed(
                                                    'E01Opcoe',
                                                    queryParameters: {
                                                      'restaurante':
                                                          serializeParam(
                                                        widget.restaurante,
                                                        ParamType.SupabaseRow,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                                text: 'Salvar',
                                                options: FFButtonOptions(
                                                  width: 160.0,
                                                  height: 40.0,
                                                  padding: const EdgeInsets.all(0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: const Color(0xFFA70000),
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            color: Colors.white,
                                                            fontSize: 19.0,
                                                          ),
                                                  elevation: 3.0,
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 15.0, 16.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: FutureBuilder<
                                                List<CategoriaRow>>(
                                              future:
                                                  CategoriaTable().queryRows(
                                                queryFn: (q) => q.eq(
                                                  'restaurante_id',
                                                  widget.restaurante?.id,
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
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<CategoriaRow>
                                                    dropDownCategoriaRowList =
                                                    snapshot.data!;
                                                return FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .dropDownValueController2 ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  options:
                                                      dropDownCategoriaRowList
                                                          .map((e) => e.nome)
                                                          .withoutNulls
                                                          .toList(),
                                                  onChanged: (val) async {
                                                    setState(() => _model
                                                        .dropDownValue2 = val);
                                                    setState(() {
                                                      _model.supaCat =
                                                          dropDownCategoriaRowList
                                                              .where((e) =>
                                                                  e.nome ==
                                                                  _model
                                                                      .dropDownValue2)
                                                              .toList()
                                                              .first;
                                                    });
                                                  },
                                                  width: 250.0,
                                                  height: 50.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                  hintText: 'Categoria',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  elevation: 0.0,
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secundria,
                                                  borderWidth: 1.0,
                                                  borderRadius: 8.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 4.0, 16.0, 4.0),
                                                  hidesUnderline: true,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        if (responsiveVisibility(
                                          context: context,
                                          phone: false,
                                          tablet: false,
                                        ))
                                          Flexible(
                                            child: SizedBox(
                                              width: 250.0,
                                              child: TextFormField(
                                                controller:
                                                    _model.textController12,
                                                focusNode:
                                                    _model.textFieldFocusNode6,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText:
                                                      'Buscar prato ou bebida',
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaria,
                                                        fontStyle:
                                                            FontStyle.italic,
                                                      ),
                                                  hintText:
                                                      _model.supaCat?.nome,
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontStyle:
                                                            FontStyle.italic,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .terceira,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaria,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  suffixIcon: Icon(
                                                    Icons.close_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaria,
                                                    size: 25.0,
                                                  ),
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                    ),
                                                validator: _model
                                                    .textController12Validator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 15.0, 16.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [],
                                    ),
                                  ),
                                  Flexible(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        if (_model.dropDownValue2 == null ||
                                            _model.dropDownValue2 == '')
                                          Flexible(
                                            child:
                                                FutureBuilder<List<PratosRow>>(
                                              future: PratosTable().queryRows(
                                                queryFn: (q) => q.eq(
                                                  'restaurante_id',
                                                  widget.restaurante?.id,
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
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<PratosRow>
                                                    listViewPratosRowList =
                                                    snapshot.data!;
                                                return ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount:
                                                      listViewPratosRowList
                                                          .length,
                                                  itemBuilder:
                                                      (context, listViewIndex) {
                                                    final listViewPratosRow =
                                                        listViewPratosRowList[
                                                            listViewIndex];
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  15.0,
                                                                  15.0,
                                                                  15.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
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
                                                                Container(
                                                                  width: 70.0,
                                                                  height: 70.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  child: FutureBuilder<
                                                                      List<
                                                                          CategoriaRow>>(
                                                                    future: CategoriaTable()
                                                                        .querySingleRow(
                                                                      queryFn:
                                                                          (q) =>
                                                                              q.eq(
                                                                        'id',
                                                                        listViewPratosRow
                                                                            .categoriaId,
                                                                      ),
                                                                    ),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                FlutterFlowTheme.of(context).primary,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      List<CategoriaRow>
                                                                          imageCategoriaRowList =
                                                                          snapshot
                                                                              .data!;
                                                                      final imageCategoriaRow = imageCategoriaRowList
                                                                              .isNotEmpty
                                                                          ? imageCategoriaRowList
                                                                              .first
                                                                          : null;
                                                                      return ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        child: Image
                                                                            .network(
                                                                          imageCategoriaRow!
                                                                              .imagem!,
                                                                          width:
                                                                              300.0,
                                                                          height:
                                                                              200.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                                Flexible(
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Text(
                                                                              valueOrDefault<String>(
                                                                                listViewPratosRow.nome,
                                                                                '00',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Flexible(
                                                                              child: Text(
                                                                                valueOrDefault<String>(
                                                                                  listViewPratosRow.descricao,
                                                                                  '00',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        if (!listViewPratosRow
                                                                            .pizza!)
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    formatNumber(
                                                                                      listViewPratosRow.valor!,
                                                                                      formatType: FormatType.custom,
                                                                                      currency: 'R\$ ',
                                                                                      format: '##0.00',
                                                                                      locale: 'pt_BR',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Readex Pro',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                        ),
                                                                                  ),
                                                                                  if (listViewPratosRow.aceitaMeia ?? true)
                                                                                    SizedBox(
                                                                                      height: 15.0,
                                                                                      child: VerticalDivider(
                                                                                        thickness: 1.0,
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                    ),
                                                                                  if (listViewPratosRow.aceitaMeia ?? true)
                                                                                    Text(
                                                                                      '1/2: ',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Readex Pro',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          ),
                                                                                    ),
                                                                                  if (listViewPratosRow.aceitaMeia ?? true)
                                                                                    Text(
                                                                                      formatNumber(
                                                                                        listViewPratosRow.valorMeia!,
                                                                                        formatType: FormatType.custom,
                                                                                        currency: 'R\$ ',
                                                                                        format: '##0.00',
                                                                                        locale: 'pt_BR',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Readex Pro',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          ),
                                                                                    ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        if (listViewPratosRow.pizza ??
                                                                            true)
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Text(
                                                                                        '1 ',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Readex Pro',
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        formatNumber(
                                                                                          listViewPratosRow.pizza1!,
                                                                                          formatType: FormatType.custom,
                                                                                          currency: 'R\$ ',
                                                                                          format: '##0.00',
                                                                                          locale: 'pt_BR',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Readex Pro',
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  SizedBox(
                                                                                    height: 15.0,
                                                                                    child: VerticalDivider(
                                                                                      thickness: 1.0,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Text(
                                                                                        '1/2 ',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Readex Pro',
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        formatNumber(
                                                                                          listViewPratosRow.pizza2!,
                                                                                          formatType: FormatType.custom,
                                                                                          currency: 'R\$ ',
                                                                                          format: '##0.00',
                                                                                          locale: 'pt_BR',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Readex Pro',
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  SizedBox(
                                                                                    height: 15.0,
                                                                                    child: VerticalDivider(
                                                                                      thickness: 1.0,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Text(
                                                                                        '1/3  ',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Readex Pro',
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        formatNumber(
                                                                                          listViewPratosRow.pizza3!,
                                                                                          formatType: FormatType.custom,
                                                                                          currency: 'R\$ ',
                                                                                          format: '##0.00',
                                                                                          locale: 'pt_BR',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Readex Pro',
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      await showModalBottomSheet(
                                                                        isScrollControlled:
                                                                            true,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        enableDrag:
                                                                            false,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return GestureDetector(
                                                                            onTap: () => _model.unfocusNode.canRequestFocus
                                                                                ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                                : FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: EditPedidoWidget(
                                                                                pedidoid: listViewPratosRow,
                                                                                restaurante: widget.restaurante!,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          safeSetState(
                                                                              () {}));
                                                                    },
                                                                    child: const Icon(
                                                                      Icons
                                                                          .more_vert,
                                                                      color: Color(
                                                                          0xFFFF000F),
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ],
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
                                        if (_model.dropDownValue2 != null &&
                                            _model.dropDownValue2 != '')
                                          Flexible(
                                            child:
                                                FutureBuilder<List<PratosRow>>(
                                              future: PratosTable().queryRows(
                                                queryFn: (q) => q
                                                    .eq(
                                                      'categoria_id',
                                                      _model.supaCat?.id,
                                                    )
                                                    .eq(
                                                      'restaurante_id',
                                                      widget.restaurante?.id,
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
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<PratosRow>
                                                    listViewPratosRowList =
                                                    snapshot.data!;
                                                return ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount:
                                                      listViewPratosRowList
                                                          .length,
                                                  itemBuilder:
                                                      (context, listViewIndex) {
                                                    final listViewPratosRow =
                                                        listViewPratosRowList[
                                                            listViewIndex];
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  15.0,
                                                                  15.0,
                                                                  15.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
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
                                                                Container(
                                                                  width: 70.0,
                                                                  height: 70.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  child: FutureBuilder<
                                                                      List<
                                                                          CategoriaRow>>(
                                                                    future: CategoriaTable()
                                                                        .querySingleRow(
                                                                      queryFn:
                                                                          (q) =>
                                                                              q.eq(
                                                                        'id',
                                                                        listViewPratosRow
                                                                            .categoriaId,
                                                                      ),
                                                                    ),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                FlutterFlowTheme.of(context).primary,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      List<CategoriaRow>
                                                                          imageCategoriaRowList =
                                                                          snapshot
                                                                              .data!;
                                                                      final imageCategoriaRow = imageCategoriaRowList
                                                                              .isNotEmpty
                                                                          ? imageCategoriaRowList
                                                                              .first
                                                                          : null;
                                                                      return ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        child: Image
                                                                            .network(
                                                                          imageCategoriaRow!
                                                                              .imagem!,
                                                                          width:
                                                                              300.0,
                                                                          height:
                                                                              200.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            valueOrDefault<String>(
                                                                              listViewPratosRow.nome,
                                                                              '00',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            valueOrDefault<String>(
                                                                              listViewPratosRow.descricao,
                                                                              '00',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          if (!listViewPratosRow
                                                                              .pizza!)
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Text(
                                                                                  formatNumber(
                                                                                    listViewPratosRow.valor!,
                                                                                    formatType: FormatType.custom,
                                                                                    currency: 'R\$ ',
                                                                                    format: '##0.00',
                                                                                    locale: 'pt_BR',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Readex Pro',
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                ),
                                                                                if (listViewPratosRow.aceitaMeia ?? true)
                                                                                  SizedBox(
                                                                                    height: 15.0,
                                                                                    child: VerticalDivider(
                                                                                      thickness: 1.0,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                    ),
                                                                                  ),
                                                                                if (listViewPratosRow.aceitaMeia ?? true)
                                                                                  Text(
                                                                                    '1/2: ',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Readex Pro',
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        ),
                                                                                  ),
                                                                                if (listViewPratosRow.aceitaMeia ?? true)
                                                                                  Text(
                                                                                    formatNumber(
                                                                                      listViewPratosRow.valorMeia!,
                                                                                      formatType: FormatType.custom,
                                                                                      currency: 'R\$ ',
                                                                                      format: '##0.00',
                                                                                      locale: 'pt_BR',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Readex Pro',
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                        ),
                                                                                  ),
                                                                              ],
                                                                            ),
                                                                        ],
                                                                      ),
                                                                      if (listViewPratosRow
                                                                              .pizza ??
                                                                          true)
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Text(
                                                                                      '1 ',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Readex Pro',
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                          ),
                                                                                    ),
                                                                                    Text(
                                                                                      formatNumber(
                                                                                        listViewPratosRow.pizza1!,
                                                                                        formatType: FormatType.custom,
                                                                                        currency: 'R\$ ',
                                                                                        format: '##0.00',
                                                                                        locale: 'pt_BR',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Readex Pro',
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                SizedBox(
                                                                                  height: 15.0,
                                                                                  child: VerticalDivider(
                                                                                    thickness: 1.0,
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                  ),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Text(
                                                                                      '1/2 ',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Readex Pro',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          ),
                                                                                    ),
                                                                                    Text(
                                                                                      formatNumber(
                                                                                        listViewPratosRow.pizza2!,
                                                                                        formatType: FormatType.custom,
                                                                                        currency: 'R\$ ',
                                                                                        format: '##0.00',
                                                                                        locale: 'pt_BR',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Readex Pro',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                SizedBox(
                                                                                  height: 15.0,
                                                                                  child: VerticalDivider(
                                                                                    thickness: 1.0,
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                  ),
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Text(
                                                                                      '1/3  ',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Readex Pro',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          ),
                                                                                    ),
                                                                                    Text(
                                                                                      formatNumber(
                                                                                        listViewPratosRow.pizza3!,
                                                                                        formatType: FormatType.custom,
                                                                                        currency: 'R\$ ',
                                                                                        format: '##0.00',
                                                                                        locale: 'pt_BR',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Readex Pro',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      await showModalBottomSheet(
                                                                        isScrollControlled:
                                                                            true,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        enableDrag:
                                                                            false,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return GestureDetector(
                                                                            onTap: () => _model.unfocusNode.canRequestFocus
                                                                                ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                                : FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: EditPedidoWidget(
                                                                                pedidoid: listViewPratosRow,
                                                                                restaurante: widget.restaurante!,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          safeSetState(
                                                                              () {}));
                                                                    },
                                                                    child: const Icon(
                                                                      Icons
                                                                          .more_vert,
                                                                      color: Color(
                                                                          0xFFFF000F),
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ],
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
                                        if (_model.textController12.text != '')
                                          Flexible(
                                            child:
                                                FutureBuilder<List<PratosRow>>(
                                              future: PratosTable().queryRows(
                                                queryFn: (q) => q
                                                    .eq(
                                                      'nome',
                                                      _model.textController12
                                                          .text,
                                                    )
                                                    .eq(
                                                      'restaurante_id',
                                                      widget.restaurante?.id,
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
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<PratosRow>
                                                    listViewPratosRowList =
                                                    snapshot.data!;
                                                return ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount:
                                                      listViewPratosRowList
                                                          .length,
                                                  itemBuilder:
                                                      (context, listViewIndex) {
                                                    final listViewPratosRow =
                                                        listViewPratosRowList[
                                                            listViewIndex];
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  15.0,
                                                                  15.0,
                                                                  15.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
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
                                                                Container(
                                                                  width: 70.0,
                                                                  height: 70.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  child: FutureBuilder<
                                                                      List<
                                                                          CategoriaRow>>(
                                                                    future: CategoriaTable()
                                                                        .querySingleRow(
                                                                      queryFn:
                                                                          (q) =>
                                                                              q.eq(
                                                                        'id',
                                                                        listViewPratosRow
                                                                            .categoriaId,
                                                                      ),
                                                                    ),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                FlutterFlowTheme.of(context).primary,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      List<CategoriaRow>
                                                                          imageCategoriaRowList =
                                                                          snapshot
                                                                              .data!;
                                                                      final imageCategoriaRow = imageCategoriaRowList
                                                                              .isNotEmpty
                                                                          ? imageCategoriaRowList
                                                                              .first
                                                                          : null;
                                                                      return ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        child: Image
                                                                            .network(
                                                                          imageCategoriaRow!
                                                                              .imagem!,
                                                                          width:
                                                                              300.0,
                                                                          height:
                                                                              200.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            valueOrDefault<String>(
                                                                              listViewPratosRow.nome,
                                                                              '00',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: const Color(0xFFFF000F),
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            valueOrDefault<String>(
                                                                              listViewPratosRow.descricao,
                                                                              '00',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: FlutterFlowTheme.of(context).secundria,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Text(
                                                                                formatNumber(
                                                                                  listViewPratosRow.valor!,
                                                                                  formatType: FormatType.custom,
                                                                                  currency: 'R\$ ',
                                                                                  format: '##0.00',
                                                                                  locale: 'pt_BR',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Readex Pro',
                                                                                      color: FlutterFlowTheme.of(context).secundria,
                                                                                    ),
                                                                              ),
                                                                              if (listViewPratosRow.aceitaMeia ?? true)
                                                                                SizedBox(
                                                                                  height: 15.0,
                                                                                  child: VerticalDivider(
                                                                                    thickness: 1.0,
                                                                                    color: FlutterFlowTheme.of(context).primaria,
                                                                                  ),
                                                                                ),
                                                                              if (listViewPratosRow.aceitaMeia ?? true)
                                                                                Text(
                                                                                  '1/2: ',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Readex Pro',
                                                                                        color: FlutterFlowTheme.of(context).secundria,
                                                                                      ),
                                                                                ),
                                                                              if (listViewPratosRow.aceitaMeia ?? true)
                                                                                Text(
                                                                                  formatNumber(
                                                                                    listViewPratosRow.valorMeia!,
                                                                                    formatType: FormatType.custom,
                                                                                    currency: 'R\$ ',
                                                                                    format: '##0.00',
                                                                                    locale: 'pt_BR',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Readex Pro',
                                                                                        color: FlutterFlowTheme.of(context).secundria,
                                                                                      ),
                                                                                ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      await showModalBottomSheet(
                                                                        isScrollControlled:
                                                                            true,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        enableDrag:
                                                                            false,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return GestureDetector(
                                                                            onTap: () => _model.unfocusNode.canRequestFocus
                                                                                ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                                : FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: EditPedidoWidget(
                                                                                pedidoid: listViewPratosRow,
                                                                                restaurante: widget.restaurante!,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          safeSetState(
                                                                              () {}));
                                                                    },
                                                                    child: const Icon(
                                                                      Icons
                                                                          .more_vert,
                                                                      color: Color(
                                                                          0xFFFF000F),
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ],
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
      ),
    );
  }
}

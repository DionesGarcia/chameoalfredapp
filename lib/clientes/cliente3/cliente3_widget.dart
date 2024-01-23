import '/backend/supabase/supabase.dart';
import '/componentes/cliente_boton_vercarrinho/cliente_boton_vercarrinho_widget.dart';
import '/componentes/drawer_user/drawer_user_widget.dart';
import '/componentes/header_empresa/header_empresa_widget.dart';
import '/componentes/lanches_com12/lanches_com12_widget.dart';
import '/componentes/lanches_sem12/lanches_sem12_widget.dart';
import '/componentes/pizzas/pizzas_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cliente3_model.dart';
export 'cliente3_model.dart';

class Cliente3Widget extends StatefulWidget {
  const Cliente3Widget({
    Key? key,
    required this.mesa,
    required this.categoria,
    required this.restaurante,
    required this.pedido,
  }) : super(key: key);

  final String? mesa;
  final CategoriaRow? categoria;
  final EstabelecimentoRow? restaurante;
  final PedidosRow? pedido;

  @override
  _Cliente3WidgetState createState() => _Cliente3WidgetState();
}

class _Cliente3WidgetState extends State<Cliente3Widget> {
  late Cliente3Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Cliente3Model());

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
        title: 'Cliente3',
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
                child: DrawerUserWidget(),
              ),
            ),
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(100.0),
              child: AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                automaticallyImplyLeading: false,
                actions: [],
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
                      child: HeaderEmpresaWidget(),
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
              child: Container(
                height: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      width: 600.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
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
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 3.0, 5.0, 3.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  'Mesa',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
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
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 3.0, 5.0, 3.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  'Pedido# ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
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
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                Divider(
                                  thickness: 1.0,
                                  color: Color(0xA3DA2E1A),
                                ),
                                Flexible(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Flexible(
                                        child: ListView(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          scrollDirection: Axis.vertical,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.all(16.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      25.0,
                                                                      0.0),
                                                          child: InkWell(
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
                                                              context.pushNamed(
                                                                'Cliente2',
                                                                queryParameters:
                                                                    {
                                                                  'mesa':
                                                                      serializeParam(
                                                                    widget.mesa,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                  'restaurante':
                                                                      serializeParam(
                                                                    widget
                                                                        .restaurante
                                                                        ?.id,
                                                                    ParamType
                                                                        .int,
                                                                  ),
                                                                  'pedido':
                                                                      serializeParam(
                                                                    widget
                                                                        .pedido,
                                                                    ParamType
                                                                        .SupabaseRow,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .arrow_back_ios_new,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaria,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      15.0,
                                                                      0.0),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child:
                                                                Image.network(
                                                              widget.categoria!
                                                                  .imagem!,
                                                              width: 50.0,
                                                              height: 50.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Flexible(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                widget.categoria
                                                                    ?.nome,
                                                                '0',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaria,
                                                                    fontSize:
                                                                        22.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    0.0,
                                                                    8.0,
                                                                    0.0),
                                                        child: FutureBuilder<
                                                            List<PratosRow>>(
                                                          future: PratosTable()
                                                              .queryRows(
                                                            queryFn: (q) =>
                                                                q.eq(
                                                              'categoria_id',
                                                              widget.categoria
                                                                  ?.id,
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
                                                            List<PratosRow>
                                                                listViewPratosRowList =
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
                                                                  listViewPratosRowList
                                                                      .length,
                                                              itemBuilder: (context,
                                                                  listViewIndex) {
                                                                final listViewPratosRow =
                                                                    listViewPratosRowList[
                                                                        listViewIndex];
                                                                return Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          16.0),
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              16.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secundria,
                                                                      ),
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        Flexible(
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                70.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              borderRadius: BorderRadius.only(
                                                                                bottomLeft: Radius.circular(16.0),
                                                                                bottomRight: Radius.circular(0.0),
                                                                                topLeft: Radius.circular(16.0),
                                                                                topRight: Radius.circular(0.0),
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                if (widget.categoria?.pizza == true)
                                                                                  InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      setState(() {
                                                                                        _model.check = _model.pizzasModels.getValueForKey(
                                                                                          listViewPratosRow.id.toString(),
                                                                                          (m) => m.radioButtonValue,
                                                                                        )!;
                                                                                      });
                                                                                    },
                                                                                    child: wrapWithModel(
                                                                                      model: _model.pizzasModels.getModel(
                                                                                        listViewPratosRow.id.toString(),
                                                                                        listViewIndex,
                                                                                      ),
                                                                                      updateCallback: () => setState(() {}),
                                                                                      child: PizzasWidget(
                                                                                        key: Key(
                                                                                          'Key8fd_${listViewPratosRow.id.toString()}',
                                                                                        ),
                                                                                        mesa: listViewPratosRow.id.toString(),
                                                                                        prato: listViewPratosRow,
                                                                                        restaurante: widget.restaurante!,
                                                                                        pedido: widget.pedido!,
                                                                                        categoria: widget.categoria!,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                if (widget.categoria?.pizza == false)
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      if ((listViewPratosRow.aceitaMeia ?? true) &&
                                                                                          responsiveVisibility(
                                                                                            context: context,
                                                                                            phone: false,
                                                                                          ))
                                                                                        wrapWithModel(
                                                                                          model: _model.lanchesCom12Models.getModel(
                                                                                            listViewPratosRow.id.toString(),
                                                                                            listViewIndex,
                                                                                          ),
                                                                                          updateCallback: () => setState(() {}),
                                                                                          child: LanchesCom12Widget(
                                                                                            key: Key(
                                                                                              'Key6ie_${listViewPratosRow.id.toString()}',
                                                                                            ),
                                                                                            mesa: widget.mesa!,
                                                                                            prato: listViewPratosRow,
                                                                                            restaurante: widget.restaurante!,
                                                                                            pedido: widget.pedido!,
                                                                                            categoria: widget.categoria!,
                                                                                          ),
                                                                                        ),
                                                                                      if (!listViewPratosRow.aceitaMeia!)
                                                                                        wrapWithModel(
                                                                                          model: _model.lanchesSem12Models.getModel(
                                                                                            listViewPratosRow.id.toString(),
                                                                                            listViewIndex,
                                                                                          ),
                                                                                          updateCallback: () => setState(() {}),
                                                                                          child: LanchesSem12Widget(
                                                                                            key: Key(
                                                                                              'Keyylj_${listViewPratosRow.id.toString()}',
                                                                                            ),
                                                                                            mesa: widget.mesa!,
                                                                                            prato: listViewPratosRow,
                                                                                            restaurante: widget.restaurante!,
                                                                                            pedido: widget.pedido!,
                                                                                            categoria: widget.categoria!,
                                                                                          ),
                                                                                        ),
                                                                                    ],
                                                                                  ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsets.all(8.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                children: [
                                                                                  Container(
                                                                                    decoration: BoxDecoration(),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Container(
                                                                                          decoration: BoxDecoration(),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Container(
                                                                                    decoration: BoxDecoration(),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.min,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Text(
                                                                                          valueOrDefault<String>(
                                                                                            listViewPratosRow.nome,
                                                                                            '00',
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Readex Pro',
                                                                                                color: FlutterFlowTheme.of(context).primaria,
                                                                                                fontSize: 16.0,
                                                                                                decoration: TextDecoration.underline,
                                                                                              ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 15.0),
                                                                                          child: Text(
                                                                                            valueOrDefault<String>(
                                                                                              listViewPratosRow.descricao,
                                                                                              '00',
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Readex Pro',
                                                                                                  fontSize: 14.0,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                        if (widget.categoria?.pizza == false)
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            children: [
                                                                                              RichText(
                                                                                                textScaleFactor: MediaQuery.of(context).textScaleFactor,
                                                                                                text: TextSpan(
                                                                                                  children: [
                                                                                                    TextSpan(
                                                                                                      text: 'Valor:  ',
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: 'Readex Pro',
                                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                                            fontWeight: FontWeight.normal,
                                                                                                          ),
                                                                                                    ),
                                                                                                    TextSpan(
                                                                                                      text: valueOrDefault<String>(
                                                                                                        formatNumber(
                                                                                                          listViewPratosRow.valor,
                                                                                                          formatType: FormatType.custom,
                                                                                                          currency: 'R\$ ',
                                                                                                          format: '##0.00',
                                                                                                          locale: 'pt_BR',
                                                                                                        ),
                                                                                                        '0',
                                                                                                      ),
                                                                                                      style: TextStyle(),
                                                                                                    )
                                                                                                  ],
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                              ),
                                                                                              if (listViewPratosRow.aceitaMeia ?? true)
                                                                                                SizedBox(
                                                                                                  height: 15.0,
                                                                                                  child: VerticalDivider(
                                                                                                    thickness: 1.0,
                                                                                                    color: FlutterFlowTheme.of(context).terceira,
                                                                                                  ),
                                                                                                ),
                                                                                              if (listViewPratosRow.aceitaMeia ?? true)
                                                                                                RichText(
                                                                                                  textScaleFactor: MediaQuery.of(context).textScaleFactor,
                                                                                                  text: TextSpan(
                                                                                                    children: [
                                                                                                      TextSpan(
                                                                                                        text: '1/2: ',
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: 'Readex Pro',
                                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                                              fontWeight: FontWeight.normal,
                                                                                                            ),
                                                                                                      ),
                                                                                                      TextSpan(
                                                                                                        text: formatNumber(
                                                                                                          listViewPratosRow.valorMeia!,
                                                                                                          formatType: FormatType.custom,
                                                                                                          currency: 'R\$ ',
                                                                                                          format: '##0.00',
                                                                                                          locale: 'pt_BR',
                                                                                                        ),
                                                                                                        style: TextStyle(),
                                                                                                      )
                                                                                                    ],
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Readex Pro',
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                        ),
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
                                                                            if (widget.categoria?.pizza ==
                                                                                true)
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Card(
                                                                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                        color: valueOrDefault<String>(
                                                                                                  _model.pizzasModels.getValueForKey(
                                                                                                    listViewPratosRow.id.toString(),
                                                                                                    (m) => m.radioButtonValue,
                                                                                                  ),
                                                                                                  '1',
                                                                                                ) ==
                                                                                                '1'
                                                                                            ? Color(0xFFDAD6FF)
                                                                                            : FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        elevation: 4.0,
                                                                                        shape: RoundedRectangleBorder(
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsets.all(3.0),
                                                                                          child: RichText(
                                                                                            textScaleFactor: MediaQuery.of(context).textScaleFactor,
                                                                                            text: TextSpan(
                                                                                              children: [
                                                                                                TextSpan(
                                                                                                  text: '1 ',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Readex Pro',
                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                      ),
                                                                                                ),
                                                                                                TextSpan(
                                                                                                  text: formatNumber(
                                                                                                    listViewPratosRow.pizza1!,
                                                                                                    formatType: FormatType.custom,
                                                                                                    currency: 'R\$ ',
                                                                                                    format: '##0.00',
                                                                                                    locale: 'pt_BR',
                                                                                                  ),
                                                                                                  style: TextStyle(),
                                                                                                )
                                                                                              ],
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Readex Pro',
                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                    fontSize: 12.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  SizedBox(
                                                                                    height: 15.0,
                                                                                    child: VerticalDivider(
                                                                                      thickness: 1.0,
                                                                                      color: FlutterFlowTheme.of(context).terceira,
                                                                                    ),
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Card(
                                                                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                        color: valueOrDefault<String>(
                                                                                                  _model.pizzasModels.getValueForKey(
                                                                                                    listViewPratosRow.id.toString(),
                                                                                                    (m) => m.radioButtonValue,
                                                                                                  ),
                                                                                                  '1',
                                                                                                ) ==
                                                                                                '1/2'
                                                                                            ? Color(0xFFDAD6FF)
                                                                                            : FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        elevation: 4.0,
                                                                                        shape: RoundedRectangleBorder(
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsets.all(3.0),
                                                                                          child: RichText(
                                                                                            textScaleFactor: MediaQuery.of(context).textScaleFactor,
                                                                                            text: TextSpan(
                                                                                              children: [
                                                                                                TextSpan(
                                                                                                  text: '1/2 ',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Readex Pro',
                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                      ),
                                                                                                ),
                                                                                                TextSpan(
                                                                                                  text: formatNumber(
                                                                                                    listViewPratosRow.pizza2!,
                                                                                                    formatType: FormatType.custom,
                                                                                                    currency: 'R\$ ',
                                                                                                    format: '##0.00',
                                                                                                    locale: 'pt_BR',
                                                                                                  ),
                                                                                                  style: TextStyle(),
                                                                                                )
                                                                                              ],
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Readex Pro',
                                                                                                    fontSize: 12.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  SizedBox(
                                                                                    height: 15.0,
                                                                                    child: VerticalDivider(
                                                                                      thickness: 1.0,
                                                                                      color: FlutterFlowTheme.of(context).terceira,
                                                                                    ),
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Card(
                                                                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                        color: valueOrDefault<String>(
                                                                                                  _model.pizzasModels.getValueForKey(
                                                                                                    listViewPratosRow.id.toString(),
                                                                                                    (m) => m.radioButtonValue,
                                                                                                  ),
                                                                                                  '1',
                                                                                                ) ==
                                                                                                '1/3'
                                                                                            ? Color(0xFFDAD6FF)
                                                                                            : FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        elevation: 4.0,
                                                                                        shape: RoundedRectangleBorder(
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsets.all(3.0),
                                                                                          child: RichText(
                                                                                            textScaleFactor: MediaQuery.of(context).textScaleFactor,
                                                                                            text: TextSpan(
                                                                                              children: [
                                                                                                TextSpan(
                                                                                                  text: '1/3 ',
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Readex Pro',
                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                      ),
                                                                                                ),
                                                                                                TextSpan(
                                                                                                  text: formatNumber(
                                                                                                    listViewPratosRow.pizza3!,
                                                                                                    formatType: FormatType.custom,
                                                                                                    currency: 'R\$ ',
                                                                                                    format: '##0.00',
                                                                                                    locale: 'pt_BR',
                                                                                                  ),
                                                                                                  style: TextStyle(),
                                                                                                )
                                                                                              ],
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Readex Pro',
                                                                                                    fontSize: 12.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
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
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  height: 56.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    borderRadius: BorderRadius.circular(0.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                    ),
                                  ),
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
                                          containerItensDoPedidoRowList =
                                          snapshot.data!;
                                      return Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFD9D9D9),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(8.0),
                                            topRight: Radius.circular(8.0),
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 15.0, 0.0),
                                          child: FutureBuilder<
                                              List<SomaPedidoRow>>(
                                            future: SomaPedidoTable()
                                                .querySingleRow(
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
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<SomaPedidoRow>
                                                  rowSomaPedidoRowList =
                                                  snapshot.data!;
                                              final rowSomaPedidoRow =
                                                  rowSomaPedidoRowList
                                                          .isNotEmpty
                                                      ? rowSomaPedidoRowList
                                                          .first
                                                      : null;
                                              return Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaria,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  3.0,
                                                                  5.0,
                                                                  3.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            'Total:',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Color(
                                                                      0xFFDA2E1A),
                                                                  fontSize:
                                                                      22.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                          ),
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              formatNumber(
                                                                rowSomaPedidoRow
                                                                    ?.total,
                                                                formatType:
                                                                    FormatType
                                                                        .custom,
                                                                currency:
                                                                    'R\$ ',
                                                                format:
                                                                    '##0.00',
                                                                locale: 'pt_BR',
                                                              ),
                                                              ' R\$ 0,00',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Color(
                                                                      0xFFDA2E1A),
                                                                  fontSize:
                                                                      22.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
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
                                                                    ClienteBotonVercarrinhoWidget(
                                                                  valorCarrinho:
                                                                      _model
                                                                          .valorTotal!,
                                                                  mesa: widget
                                                                      .mesa!,
                                                                  restaurante:
                                                                      widget
                                                                          .restaurante!,
                                                                  pedido: widget
                                                                      .pedido!,
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            safeSetState(
                                                                () {}));
                                                      },
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          if (containerItensDoPedidoRowList
                                                                  .length >=
                                                              1)
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          30.0,
                                                                          0.0),
                                                              child:
                                                                  badges.Badge(
                                                                badgeContent:
                                                                    Text(
                                                                  containerItensDoPedidoRowList
                                                                      .length
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                showBadge: true,
                                                                shape: badges
                                                                    .BadgeShape
                                                                    .circle,
                                                                badgeColor: Color(
                                                                    0xFF15981B),
                                                                elevation: 4.0,
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            8.0,
                                                                            8.0,
                                                                            8.0),
                                                                position: badges
                                                                        .BadgePosition
                                                                    .topEnd(),
                                                                animationType:
                                                                    badges
                                                                        .BadgeAnimationType
                                                                        .scale,
                                                                toAnimate: true,
                                                                child: Icon(
                                                                  Icons
                                                                      .shopping_cart_outlined,
                                                                  color: Color(
                                                                      0xFF007300),
                                                                  size: 35.0,
                                                                ),
                                                              ),
                                                            ),
                                                          FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              context.pushNamed(
                                                                'Cliente4',
                                                                queryParameters:
                                                                    {
                                                                  'valorCarrinho':
                                                                      serializeParam(
                                                                    valueOrDefault<
                                                                        double>(
                                                                      rowSomaPedidoRow
                                                                          ?.total,
                                                                      0.0,
                                                                    ),
                                                                    ParamType
                                                                        .double,
                                                                  ),
                                                                  'mesa':
                                                                      serializeParam(
                                                                    widget.mesa,
                                                                    ParamType
                                                                        .String,
                                                                  ),
                                                                  'restaurante':
                                                                      serializeParam(
                                                                    widget
                                                                        .restaurante,
                                                                    ParamType
                                                                        .SupabaseRow,
                                                                  ),
                                                                  'pedido':
                                                                      serializeParam(
                                                                    widget
                                                                        .pedido,
                                                                    ParamType
                                                                        .SupabaseRow,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                            text: 'Finalizar',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 100.0,
                                                              height: 46.0,
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: Color(
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
                                                                            14.0,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                              elevation: 3.0,
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
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
                                      );
                                    },
                                  ),
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
            ),
          ),
        ));
  }
}

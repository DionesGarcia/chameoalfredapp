import '/backend/supabase/supabase.dart';
import '/components/drawer_user/drawer_user_widget.dart';
import '/components/header_empresa/header_empresa_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'cliente1_model.dart';
export 'cliente1_model.dart';

class Cliente1Widget extends StatefulWidget {
  const Cliente1Widget({
    super.key,
    this.restauranteID,
    this.mesa,
    this.user,
  });

  final int? restauranteID;
  final String? mesa;
  final int? user;

  @override
  _Cliente1WidgetState createState() => _Cliente1WidgetState();
}

class _Cliente1WidgetState extends State<Cliente1Widget> {
  late Cliente1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Cliente1Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.nomePagina(
        context,
        nome: 'inicio',
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
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: FutureBuilder<List<EstabelecimentoRow>>(
              future: EstabelecimentoTable().querySingleRow(
                queryFn: (q) => q.eq(
                  'id',
                  88,
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
                  width: 600.0,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: SingleChildScrollView(
                    primary: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 600.0,
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          child: Stack(
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.network(
                                  containerEstabelecimentoRow!.banner1!,
                                  width: double.infinity,
                                  height: 300.0,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: Wrap(
                            spacing: 10.0,
                            runSpacing: 5.0,
                            alignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                width: 100.0,
                                height: 28.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).secundria,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Flexible(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 5.0, 0.0),
                                            child: Icon(
                                              Icons.delivery_dining,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secundria,
                                              size: 24.0,
                                            ),
                                          ),
                                          Flexible(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 3.0, 0.0),
                                              child: Text(
                                                'Delivery',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secundria,
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
                              Container(
                                height: 28.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).secundria,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            3.0, 0.0, 3.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 5.0, 0.0),
                                              child: Icon(
                                                Icons.phone,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secundria,
                                                size: 24.0,
                                              ),
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                containerEstabelecimentoRow
                                                    .cel,
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
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 28.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).secundria,
                                  ),
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          content: Text(
                                              '${widget.user?.toString()}/${widget.mesa}/${widget.restauranteID?.toString()}'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: const Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  3.0, 0.0, 3.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Icon(
                                                  Icons.timer_sharp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secundria,
                                                  size: 24.0,
                                                ),
                                              ),
                                              Text(
                                                'Aberto até as 23hs',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secundria,
                                                    ),
                                              ),
                                            ],
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
                        Divider(
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).terceira,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 24.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      _model.linhapedido =
                                          await PedidosTable().insert({
                                        'restaurante_id':
                                            FFAppState().restauranteID,
                                        'mesa': widget.mesa,
                                        'status': 'PEDINDO',
                                        'pedido': valueOrDefault<int>(
                                          (containerEstabelecimentoRow.numeroPedidoatual!) +
                                              1,
                                          0,
                                        ),
                                        'total': 0.0,
                                        'cliente': widget.user,
                                        'pago': false,
                                      });
                                      await EstabelecimentoTable().update(
                                        data: {
                                          'numeroPedidoatual':
                                              valueOrDefault<int>(
                                            containerEstabelecimentoRow
                                                .numeroPedidoatual,
                                            1,
                                          ),
                                        },
                                        matchingRows: (rows) => rows.eq(
                                          'id',
                                          FFAppState().restauranteID,
                                        ),
                                      );

                                      context.pushNamed(
                                        'Cliente2',
                                        queryParameters: {
                                          'mesa': serializeParam(
                                            widget.mesa,
                                            ParamType.String,
                                          ),
                                          'restaurante': serializeParam(
                                            FFAppState().restauranteID,
                                            ParamType.int,
                                          ),
                                          'pedido': serializeParam(
                                            _model.linhapedido,
                                            ParamType.SupabaseRow,
                                          ),
                                        }.withoutNulls,
                                      );

                                      setState(() {});
                                    },
                                    text: '       Cardápio',
                                    icon: const Icon(
                                      Icons.menu_book_outlined,
                                      size: 40.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 100.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primaria,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 26.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(22.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await actions.criarQRcode(
                                      containerEstabelecimentoRow.banner2!,
                                      containerEstabelecimentoRow.banner1!,
                                      'restaurante://restaurante.com${GoRouter.of(context).location}',
                                    );
                                  },
                                  child: Text(
                                    'Recomendados para você',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 4.0),
                          child: Container(
                            width: double.infinity,
                            height: 270.0,
                            decoration: const BoxDecoration(),
                            child: FutureBuilder<List<CategoriaRow>>(
                              future: CategoriaTable().queryRows(
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
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<CategoriaRow> listViewCategoriaRowList =
                                    snapshot.data!;
                                return ListView.separated(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 16.0),
                                  scrollDirection: Axis.horizontal,
                                  itemCount: listViewCategoriaRowList.length,
                                  separatorBuilder: (_, __) =>
                                      const SizedBox(width: 16.0),
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewCategoriaRow =
                                        listViewCategoriaRowList[listViewIndex];
                                    return Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 12.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.linhapedidocat =
                                              await PedidosTable().insert({
                                            'restaurante_id':
                                                FFAppState().restauranteID,
                                            'mesa': widget.mesa,
                                            'status': 'PEDINDO',
                                            'pedido': valueOrDefault<int>(
                                              (containerEstabelecimentoRow.numeroPedidoatual!) +
                                                  1,
                                              0,
                                            ),
                                            'total': 0.0,
                                            'cliente': widget.user,
                                            'pago': false,
                                          });
                                          await HistricoTable().insert({
                                            'restaurante_id':
                                                FFAppState().restauranteID,
                                            'mesa': FFAppState().mesa,
                                            'pedido': _model
                                                .linhapedidocat?.pedido
                                                ?.toString(),
                                            'ação':
                                                'Pedido # ${_model.linhapedidocat?.pedido?.toString()} iniciado.',
                                            'data': supaSerialize<DateTime>(
                                                getCurrentTimestamp),
                                            'filtro': 'pedidos',
                                            'Usuario':
                                                FFAppState().userID.toString(),
                                          });
                                          await EstabelecimentoTable().update(
                                            data: {
                                              'numeroPedidoatual':
                                                  _model.linhapedidocat?.pedido,
                                            },
                                            matchingRows: (rows) => rows.eq(
                                              'id',
                                              FFAppState().restauranteID,
                                            ),
                                          );

                                          context.pushNamed(
                                            'Cliente3',
                                            queryParameters: {
                                              'mesa': serializeParam(
                                                FFAppState().mesa,
                                                ParamType.String,
                                              ),
                                              'categoria': serializeParam(
                                                listViewCategoriaRow,
                                                ParamType.SupabaseRow,
                                              ),
                                              'restaurante': serializeParam(
                                                containerEstabelecimentoRow,
                                                ParamType.SupabaseRow,
                                              ),
                                              'pedido': serializeParam(
                                                _model.linhapedidocat,
                                                ParamType.SupabaseRow,
                                              ),
                                            }.withoutNulls,
                                          );

                                          setState(() {});
                                        },
                                        child: Container(
                                          width: 220.0,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Stack(
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          listViewCategoriaRow
                                                              .imagem!,
                                                          width:
                                                              double.infinity,
                                                          height:
                                                              double.infinity,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                1.0, -1.0),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      8.0,
                                                                      0.0),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                            child:
                                                                BackdropFilter(
                                                              filter:
                                                                  ImageFilter
                                                                      .blur(
                                                                sigmaX: 5.0,
                                                                sigmaY: 2.0,
                                                              ),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          36.0,
                                                                      height:
                                                                          36.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent4,
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                      ),
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            const EdgeInsets.all(2.0),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .favorite_border,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 8.0, 0.0, 0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      listViewCategoriaRow.nome,
                                                      '0',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleLarge,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 4.0, 0.0, 8.0),
                                                  child: FutureBuilder<
                                                      List<PratosRow>>(
                                                    future: PratosTable()
                                                        .querySingleRow(
                                                      queryFn: (q) => q
                                                          .eq(
                                                            'categoria_id',
                                                            listViewCategoriaRow
                                                                .id,
                                                          )
                                                          .order('valor'),
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
                                                      List<PratosRow>
                                                          richTextPratosRowList =
                                                          snapshot.data!;
                                                      final richTextPratosRow =
                                                          richTextPratosRowList
                                                                  .isNotEmpty
                                                              ? richTextPratosRowList
                                                                  .first
                                                              : null;
                                                      return RichText(
                                                        textScaleFactor:
                                                            MediaQuery.of(
                                                                    context)
                                                                .textScaleFactor,
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text:
                                                                  'a partir de ',
                                                              style: TextStyle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text: 'R\$ 29,90',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaria,
                                                                  ),
                                                            )
                                                          ],
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium,
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
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
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

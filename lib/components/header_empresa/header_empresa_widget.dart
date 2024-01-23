import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'header_empresa_model.dart';
export 'header_empresa_model.dart';

class HeaderEmpresaWidget extends StatefulWidget {
  const HeaderEmpresaWidget({super.key});

  @override
  _HeaderEmpresaWidgetState createState() => _HeaderEmpresaWidgetState();
}

class _HeaderEmpresaWidgetState extends State<HeaderEmpresaWidget> {
  late HeaderEmpresaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderEmpresaModel());

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

    return Container(
      width: 600.0,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(0.0),
            child: Image.asset(
              'assets/images/0005.png',
              width: 600.0,
              height: 185.0,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Stack(
              children: [
                Stack(
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: Icon(
                        Icons.dehaze,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        Scaffold.of(context).openDrawer();
                      },
                    ),
                  ],
                ),
                Align(
                  alignment: const AlignmentDirectional(1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                    child: Container(
                      width: 80.0,
                      height: 30.0,
                      decoration: const BoxDecoration(),
                      child: Stack(
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(1.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 20.0,
                              borderWidth: 1.0,
                              buttonSize: 40.0,
                              icon: Icon(
                                Icons.support_agent_outlined,
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                await launchURL('https://wa.me/11993337295');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [],
                ),
                Align(
                  alignment: const AlignmentDirectional(0.92, 0.87),
                  child: Text(
                    FFAppState().nomeRstaurante,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

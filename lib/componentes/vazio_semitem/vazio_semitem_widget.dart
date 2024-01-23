import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'vazio_semitem_model.dart';
export 'vazio_semitem_model.dart';

class VazioSemitemWidget extends StatefulWidget {
  const VazioSemitemWidget({super.key});

  @override
  _VazioSemitemWidgetState createState() => _VazioSemitemWidgetState();
}

class _VazioSemitemWidgetState extends State<VazioSemitemWidget> {
  late VazioSemitemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VazioSemitemModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
          child: Text(
            'Nenhum item para exibir!',
            style: FlutterFlowTheme.of(context).headlineMedium,
          ),
        ),
      ],
    );
  }
}

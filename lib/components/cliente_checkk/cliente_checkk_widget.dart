import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cliente_checkk_model.dart';
export 'cliente_checkk_model.dart';

class ClienteCheckkWidget extends StatefulWidget {
  const ClienteCheckkWidget({super.key});

  @override
  State<ClienteCheckkWidget> createState() => _ClienteCheckkWidgetState();
}

class _ClienteCheckkWidgetState extends State<ClienteCheckkWidget> {
  late ClienteCheckkModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClienteCheckkModel());

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

    return Theme(
      data: ThemeData(
        checkboxTheme: CheckboxThemeData(
          visualDensity: VisualDensity.compact,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
        unselectedWidgetColor: FlutterFlowTheme.of(context).secondaryText,
      ),
      child: Checkbox(
        value: _model.checkboxValue ??= false,
        onChanged: (newValue) async {
          setState(() => _model.checkboxValue = newValue!);
        },
        activeColor: FlutterFlowTheme.of(context).primary,
        checkColor: FlutterFlowTheme.of(context).info,
      ),
    );
  }
}

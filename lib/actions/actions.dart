import '/backend/api_requests/api_manager.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future nomePagina(
  BuildContext context, {
  String? nome,
}) async {
  FFAppState().update(() {
    FFAppState().pagina = nome!;
  });
}

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

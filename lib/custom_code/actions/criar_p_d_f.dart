// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

Future criarPDF() async {
  // Add your function code here!
  final pdf = pw.Document();

  pdf.addPage(pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Center(
          child: pw.Text("widget gerador de PDF - Studio Garcia 1.0.0",
              style: pw.TextStyle(
                fontSize: 16,
                fontStyle: pw.FontStyle.italic,
              )),
        ); // Center
      })); // Page

  await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save());
}

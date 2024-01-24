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

import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:http/http.dart' as http;

Future criarQRcode(
  String imagem1,
  String imagem2,
  String qrCodeData,
) async {
  final pdf = pw.Document();

  final http.Response response1 = await http.get(Uri.parse(imagem1));
  final Uint8List imageBytes1 = response1.bodyBytes;

  final http.Response response2 = await http.get(Uri.parse(imagem2));
  final Uint8List imageBytes2 = response2.bodyBytes;

  // Adiciona uma única Página

  pdf.addPage(pw.Page(
    // Inicia a construção dos elementos da Página

    build: (pw.Context context) {
      // Cria uma imagem a partir de dados de bytes em memória. imageBytes

      return pw.Center(
        child: pw.Container(
          width: 200,
          height: 380,
          decoration: pw.BoxDecoration(
            borderRadius: pw.BorderRadius.circular(10), // Borda arredondada

            border: pw.Border.all(
              color: PdfColor.fromInt(0xFF808080),
              width: 1,
            ),
          ),
          padding: pw.EdgeInsets.all(10),
          child: pw.Column(
            mainAxisAlignment: pw.MainAxisAlignment.center,
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            children: [
              pw.Image(
                pw.MemoryImage(imageBytes1),
                width: 200,
                height: 50,
              ),

              // Espaçamento

              pw.SizedBox(height: 30),

              // Adiciona o QRCode
              pw.BarcodeWidget(
                barcode: pw.Barcode.qrCode(),
                data: qrCodeData,
                color: PdfColor.fromInt(0x8E2DE2), // Cor do QRCode
                width: 150,
                height: 150,
              ),

              // Espaçamento
              pw.SizedBox(height: 30),

              pw.Image(
                pw.MemoryImage(imageBytes2),
                width: 150,
                height: 50,
              ),
            ],
          ),
        ),
      );
    },
  ));

  await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save());
}

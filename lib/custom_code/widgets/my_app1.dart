// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:qrcode_scanner_dialog/qr_bar_code_scanner_dialog.dart';
import 'package:qrcode_scanner_dialog/qr_bar_code_scanner_dialog_method_channel.dart';
import 'package:qrcode_scanner_dialog/qr_bar_code_scanner_dialog_platform_interface.dart';
import 'package:qrcode_scanner_dialog/qr_bar_code_scanner_dialog_web.dart';

void main() {
  runApp(const MyApp1(
    width: 300.0, // Substitua com o valor desejado
    height: 200.0, // Substitua com o valor desejado
  ));
}

class MyApp1 extends StatefulWidget {
  const MyApp1({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  State<MyApp1> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp1> {
  final _qrBarCodeScannerDialogPlugin = QrBarCodeScannerDialog();
  String? code;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Builder(builder: (context) {
          return Material(
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  _qrBarCodeScannerDialogPlugin.getScannedQrBarCode(
                    context: context,
                    cameraFacing: CameraFacing.front,
                    onCode: (code) {
                      setState(() {
                        this.code = code;
                      });
                    },
                  );
                },
                child: Container(
                  width: widget.width,
                  height: widget.height,
                  child: Center(child: Text(code ?? "Click me")),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

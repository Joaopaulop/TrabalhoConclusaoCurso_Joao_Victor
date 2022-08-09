
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:tccapp/modules/login_dependente/login_dependente_page.dart';
import 'package:tccapp/modules/retorno_carta/retorno_carta_page.dart';
import 'package:tccapp/widgets/button.dart';

class QrCodePage extends StatefulWidget {
  const QrCodePage({Key? key}) : super(key: key);

  @override
  State<QrCodePage> createState() => _QrCodeState();
}

class _QrCodeState extends State<QrCodePage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;
  int cont = 0;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: GestureDetector(
                onTap:(){
                   Navigator.push(
                   context,
                    MaterialPageRoute(builder: (context) =>  LoginDependentePage()),
                     );
                },
                child:Button(title: 'Sair',),
              )
            ),
          )
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;

    controller.scannedDataStream.listen((scanData) {
      setState(() {
        cont++;
        result = scanData;
        print(result);
      });
      if(result != null && cont == 1){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  RetornoCartaPage(nome: result!.code,)),
        );
      }
    });
  }
}



import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qrscanner/Next.dart';



class FlowerPot extends StatefulWidget {
  const FlowerPot({Key? key}) : super(key: key);

  @override
  State<FlowerPot> createState() => _FlowerPotState();
}

class _FlowerPotState extends State<FlowerPot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body:   Column(
        children: [
          MobileScanner(
            // fit: BoxFit.contain,
            onDetect: (capture) {
              final List<Barcode> barcodes = capture.barcodes;
              for (final barcode in barcodes) {
                debugPrint('Barcode found! ${barcode.rawValue}');
              }
            },
          ),
          TextField(),
          SizedBox(height:50),


          ElevatedButton(
            style: ElevatedButton.styleFrom(),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){return Next();}));
            },
            child: const Text(
              'NEXTTT',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ]
      )
    );

  }
}
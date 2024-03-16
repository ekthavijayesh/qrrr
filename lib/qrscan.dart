import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrscanner/flower.dart';

class Qrsc extends StatefulWidget {
  const Qrsc({Key? key}) : super(key: key);

  @override
  State<Qrsc> createState() => _QrscState();
}

class _QrscState extends State<Qrsc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              SizedBox(height: 100),
              Icon(
                Icons.account_circle,
                size: 100,
                color: Colors.white,
              ),
              QrImageView(
                data: '9447150819',
                version: QrVersions.auto,
                size: 200.0,
              ),
              SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.teal),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){return FlowerPot();}));
                },
                child: const Text(
                  'SCAN',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ])));
  }
}

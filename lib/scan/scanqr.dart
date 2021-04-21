import 'package:flutter/material.dart';

class ScanQr extends StatefulWidget {
  ScanQr({Key key}) : super(key: key);
  @override
  _ScanQrState createState() => _ScanQrState();
}

String qrData="No data found!";
var data;
bool  hasdata = false;

class _ScanQrState extends State<ScanQr> {
  @override
  Widget build(BuildContext context) {
    return Hero(tag: "Scan QR", child: Scaffold());
  }
}

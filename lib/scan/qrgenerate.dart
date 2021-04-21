import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:barcode_scanner/barcode_scanning_data.dart';
import 'scanqr.dart';



class QrGenerate extends StatefulWidget {
  @override
  _QrGenerateState createState() => _QrGenerateState();
}

class _QrGenerateState extends State<QrGenerate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Scan and Generate QR",
        ),
        backgroundColor: Color.fromARGB(255, 124, 57, 167),
      ),
      body: Container(

        child: Center(
          child: Column(

            children: [
              SizedBox(
                height: 100,
              ),


// Positioned(
//     child: Center(
//       child: Container(
//         child: Image.asset(
//           'assets/sathi.png',
//         ),
//       ),
//     ),
// ),
              Container(

                child: Image.asset(
                  'assets/scanqr.png',
                ),
              ),


// SizedBox(
//   height: 30,
// ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(20)),

                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => ScanQr()
                                ));
                          },
                          child: Text(
                            'Scan QR',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: TextButton(
                          onPressed: () async{



                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(builder: (_) => Login()));
                          },
                          child: Text(
                            'Generate QR',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}






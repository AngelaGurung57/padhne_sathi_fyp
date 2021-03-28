import 'package:flutter/material.dart';
import 'package:padhne_sathi/pages/signup.dart';
import 'login.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        child: Center(
          child: Column(

            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'Welcome to\nPadhne Sathi',
                style: TextStyle(color: Colors.black, fontSize: 32 ),
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
                  'assets/sathi.png',
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
                                context, MaterialPageRoute(builder: (_) => SignUp()));
                          },
                          child: Text(
                            'Sign Up',
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
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (_) => Login()));
                          },
                          child: Text(
                            'Login',
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

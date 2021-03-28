import 'package:flutter/material.dart';
import 'login.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Enter your details please',
                    style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25, color: Colors.purple

                    ),
                  ),
                SizedBox(
                  height: 20,
                 ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(

                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name',
                        hintText: 'Your name please',
                        prefixIcon: Icon(Icons.person),
                      ),
                      //controller: name,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                          prefixIcon: Icon(Icons.email),
                          hintText: 'abc@gmail.com'
                      ),
                      // controller: email,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Please enter your password.'
                      ),
                      //controller: password,
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Confirm Password',
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Enter password to Confirm'
                      ),
                    ),
                  ),

                  Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white, fontSize: 25),

                      ),
                    ),
                  ),

                ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}

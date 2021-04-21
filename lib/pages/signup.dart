
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
//import 'package:padhne_sathi/pages/dashboard.dart';
import 'dart:async';
//import 'login.dart';
import 'dart:convert';


 bool available = true;
void main(){
  runApp(Register());
}

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUp(),
    );
  }
}

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cpassController = TextEditingController();


  //boolean for circularprogress indicatior
  bool visible = false;



  Future register() async{
    setState(() {
      visible = true;
    });
    String url = "http://192.168.1.100/fyp/signup.php";
    // print(nameController.text);
    var response = await http.post(url,body:{
      "name" :nameController.text,
      "email" : emailController.text,
      "password" : passwordController.text,

    }, headers:{
      "Accept": "application/json"
    });
   var dataRes= json.decode(response.body);
   print(dataRes);

   Fluttertoast.showToast(
        msg: "User Signed IN",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);

        // Navigator.push(
        // context, MaterialPageRoute(builder: (context) => Login()));

    // if (json.decode(response.body) != "Error")
    // {
    //   Fluttertoast.showToast(
    //   msg: "User Signed IN",
    //   toastLength: Toast.LENGTH_LONG,
    //   gravity: ToastGravity.BOTTOM,
    //   timeInSecForIosWeb: 1,
    //   backgroundColor: Colors.green,
    //   textColor: Colors.white,
    //   fontSize: 16.0);
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => Login()));
    // }
    // // else if(json.decode(response.body) == "Success")
    // // {
    // //    Fluttertoast.showToast
    // //    (
    // //     msg: "User Signed Up",toastLength: Toast.LENGTH_LONG
    // //     );
    // //     Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    // //
    // // }
    // else
    // {
    //    Fluttertoast.showToast
    //    (
    //     msg: "error",toastLength: Toast.LENGTH_LONG
    //     );
    // }

    //Fluttertoast. showToast(msg: "Signed Up");
    //var datauser = json.decode(response.body);

    }



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
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.purple

                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    name(),
                    SizedBox(
                      height: 20,
                    ),
                   email(),
                    SizedBox(
                      height: 20,
                    ),
                    password(),
                    SizedBox(
                      height: 20,
                    ),
                    conPassword(),
                    SizedBox(
                      height: 20,
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(10.0),
                    //   child: TextField(
                    //     decoration: InputDecoration(
                    //         border: OutlineInputBorder(),
                    //         labelText: 'test',
                    //         prefixIcon: Icon(Icons.email),
                    //         hintText: 'test'
                    //     ),
                    //     controller: test,
                    //   ),
                    // ),

                    Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(20)),
                      child: TextButton(
                        onPressed: //register,
                        (){
                          register();
                          // if (passwordController.text != cpassController.text){
                          //   Fluttertoast. showToast(msg: "password not matched");
                          // }
                          // else if (emailController.text.length < 0 || passwordController.text.length < 0 || nameController.text.length <0 || cpassController.text.length <0){
                          //  // if (emailController.text.length < 0 || passwordController.text.length < 0 || nameController.text.length <0 || cpassController.text.length <0){
                          //     Fluttertoast.showToast( msg: "please don't leave any text field empty", toastLength: Toast.LENGTH_LONG);
                          //     //print(available);
                          //     // if (available ==true)
                          //     // {
                          //     //   Fluttertoast.showToast(
                          //     //   msg: "User Signed Up",
                          //     //   toastLength: Toast.LENGTH_LONG
                          //     //   );
                          //     //   Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                          //     // }
                          //     // else
                          //     // {
                          //     //   Fluttertoast.showToast
                          //     //   (
                          //     //     msg: "The user already exists",
                          //     //     toastLength: Toast.LENGTH_LONG
                          //     //   );
                          //     // }
                          //
                          //   }
                          //   else
                           // {
                           //    register();
                            //}
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
    Widget name()
    {
      return TextFormField(
          controller: nameController,          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Name',
            hintText: 'Your name please',
            prefixIcon: Icon(Icons.person),
          ),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Name is required';
          }
          return null;
        }
      );
    }

    Widget email()
    {
      return TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
              prefixIcon: Icon(Icons.email),
              hintText: 'abc@gmail.com'
          ),
          controller: emailController,
          validator: (String value) {
            if (value.isEmpty) {
              return 'email is required';
            }
            return null;
          }
      );
    }

    Widget password()
    {
      return TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
              prefixIcon: Icon(Icons.lock),
              hintText: 'Please enter your password.'
          ),
          controller: passwordController,
          validator: (String value) {
            if (value.isEmpty) {
              return 'password is required';
            }
            return null;
          }      );
    }

    Widget conPassword()
    {
      return TextFormField(
          controller: cpassController,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Confirm Password',
              prefixIcon: Icon(Icons.lock),
              hintText: 'Enter password to Confirm'
          ),
          validator: (String value) {
            if (value.isEmpty) {
              Fluttertoast.showToast(msg: "password is required");
            }
            return null;
          }        );
    }
  }




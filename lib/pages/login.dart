import 'package:flutter/material.dart';
import 'package:padhne_sathi/pages/signup.dart';
import 'dashboard.dart';
import 'package:http/http.dart' as http;
//import 'package:fluttertoast/fluttertoast.dart';
//import 'dart:convert';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
 

  // // TextEditingController cpass = new TextEditingController();

  Future login() async{
    
    String url = "http://192.168.1.100/fyp/login.php";
    // print(nameController.text);
    var response = await http.post(url,body:{

      "email" : emailController.text,
      "password" : passwordController.text,
    });
  
   // var datajson = json.decode(response.body);
    //print(datajson);
    // Navigator.push(context, MaterialPageRoute(builder: (_) => DashBoard()));
    // if (datajson == "Success")
    // {
    //   //print(datajson);
    //   //Fluttertoast.showToast(msg: "Loged In", toastLength: Toast.LENGTH_LONG);
    //   // Navigator.push(context, MaterialPageRoute(builder: (_) => DashBoard()));
    //   //Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard(),),);
    // }
    //  else
    // {
    //   Fluttertoast.showToast(msg: "incorrect email and password");
    // }
  }
  
    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //height: 700,
        //width: 500,

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
                    'LogIn',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.purple),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          focusColor: Colors.white70,
                          border: OutlineInputBorder(
                          ),
                          labelText: 'User Name',
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.person),
                          hintText: 'abc@gmail.com'
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock),
                          labelText: 'Password',
                          hintText: 'Please enter your password.'
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
                      onPressed: ()
                       {
                         login();
                        Navigator.push(context, MaterialPageRoute(builder: (_) => DashBoard()));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 25),

                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => SignUp()));
                    },
                    child: Text(
                      'Dont have an account? Sign Up',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
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

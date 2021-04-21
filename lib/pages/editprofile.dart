//import 'dart:html';

//import 'dart:html';




import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

import 'package:padhne_sathi/pages/dashboard.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Profile",
      home: EditProfilePage(),
    );
  }
}

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 124, 57, 167),
        title: Text('Padhne Sathi, Profile'),
        titleTextStyle: TextStyle(color: Colors.blueGrey),

        actions: [
          IconButton(icon:const Icon(Icons.search),
            onPressed: (){
            },
          ),

          IconButton(icon:const Icon(Icons.info),
            onPressed: (){
            },
          ),
        ],

        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => DashBoard()));
          },

        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 10, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Text(
                    "Profile",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.purple),
                  ),

                  imageProfile(),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Edit Profile",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.purple,

                  ),),
                  name(),
                  email(),
                  password(true),
                  conPassword(true),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlineButton(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {},
                        child: Text("CANCEL",
                            style: TextStyle(
                                fontSize: 14,
                                letterSpacing: 2.2,
                                color: Colors.black)),
                      ),
                      RaisedButton(
                        onPressed: () {},
                        color: Colors.purple,
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "SAVE",
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 2.2,
                              color: Colors.white),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),

        ),
      ),
    );
  }
  Widget name(){
   return Padding(
     padding: const EdgeInsets.only(bottom: 35.0),
     child: TextField(
       decoration: InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 3),
         labelText: "Name",
         floatingLabelBehavior: FloatingLabelBehavior.always,
         hintText: "Angela Gurung",
         hintStyle: TextStyle(
           fontSize: 15,
           fontWeight: FontWeight.bold,
           color: Colors.black,
         )

       ),
     ),

   );
  }
  Widget email(){
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: "Email",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "angelagurung01@gmal.com",
            hintStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )
        ),
      ),

    );
  }

  Widget password(bool isPasswordTextField){
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
              decoration: InputDecoration(
                  suffixIcon: isPasswordTextField
                      ? IconButton(
                         onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                       },
                        icon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.grey,
                    ),
          )
          : null,
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: "Password",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "Password",
            hintStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )

        ),
      ),

    );
  }
  Widget conPassword(bool isPasswordTextField){
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
              onPressed: () {
                setState(() {
                  showPassword = !showPassword;
                });
              },
              icon: Icon(
                Icons.remove_red_eye,
                color: Colors.grey,
              ),
            )
                : null,
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: "Confirm Password",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: "Password",
            hintStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )

        ),
      ),

    );
  }



  Widget imageProfile(){
    return Center(
      child: Stack(
        children: [
          CircleAvatar(
            radius: 80.0,
            backgroundImage:  _imageFile==null?
            AssetImage("assets/profile.png"):
            FileImage(File(_imageFile.path)),
          ),
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child: InkWell(
              onTap: (){
                showModalBottomSheet(
                    context: context,
                    builder: ((builder) => bottomSheet()),
                );
              },
              child: Icon(
                Icons.camera_alt,
                color: Colors.purple,
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget bottomSheet(){
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(children: [
        Text(
          "Choose your Profile picture",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton.icon(
                onPressed: (){
                  takePhoto(ImageSource.camera);
                },
                icon: Icon(Icons.camera),
                label: Text("Camera"),
            ),
            FlatButton.icon(
              onPressed: (){
                takePhoto(ImageSource.gallery);
              },
              icon: Icon(Icons.image),
              label: Text("Gallary"),
            ),
          ],
        )
      ],),
    );
  }
  void takePhoto(ImageSource source) async{
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile;
    });
  }

  // Widget buildTextField(String labelText, String placeholder, bool isPasswordTextField) {
  //   return Padding(
  //     padding: const EdgeInsets.only(bottom: 35.0),
  //     child: TextField(
  //       obscureText: isPasswordTextField ? showPassword : false,
  //       decoration: InputDecoration(
  //           suffixIcon: isPasswordTextField
  //               ? IconButton(
  //                  onPressed: () {
  //               setState(() {
  //                 showPassword = !showPassword;
  //               });
  //                },
  //                 icon: Icon(
  //                 Icons.remove_red_eye,
  //                 color: Colors.grey,
  //             ),
  //           )
  //               : null,
  //             contentPadding: EdgeInsets.only(bottom: 3),
  //             labelText: labelText,
  //             floatingLabelBehavior: FloatingLabelBehavior.always,
  //             hintText: placeholder,
  //             hintStyle: TextStyle(
  //             fontSize: 16,
  //             fontWeight: FontWeight.bold,
  //             color: Colors.black,
  //           )),
  //     ),
  //   );
  // }
}
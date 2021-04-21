import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ShareBooks extends StatefulWidget {
  @override
  _ShareBooksState createState() => _ShareBooksState();
}

class item{
  const item(this.name,this.icon);
  final String name;
  final Icon icon;
}
class _ShareBooksState extends State<ShareBooks> {
  item selectedUser;
List<item> users =<item>[
  const item('Negotiable', Icon(Icons.chat,color: Colors.purple)),
  const item('Not Negotiable',Icon(Icons.speaker_notes_off,color: Colors.purple)),

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 124, 57, 167),
        title: Text('Padhne Sathi, Share Book'),
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
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    'Enter the book details\n   you want to share',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25, color: Colors.purple

                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Book Name',
                        hintText: 'Name of your book',
                        prefixIcon: Icon(Icons.book),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Publication',
                        hintText: 'Name of the publication',
                        prefixIcon: Icon(Icons.branding_watermark),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Book Edition',
                        hintText: 'Edition',
                        prefixIcon: Icon(Icons.book_outlined),
                      ),
                    ),
                  ),

                  // Padding(
                  //   padding: const EdgeInsets.all(10.0),
                  //   child: TextField(
                  //     decoration: InputDecoration(
                  //       border: OutlineInputBorder(),
                  //       labelText: 'Price',
                  //       hintText: 'Price',
                  //       prefixIcon: Icon(Icons.money_rounded),
                  //     ),
                  //   ),
                  // ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Location',
                        hintText: 'Your current address',
                        prefixIcon: Icon(Icons.location_city_rounded),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              'Price Status:'
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: DropdownButton(
                            hint: Text(
                              'Select price status',
                            ),
                            value: selectedUser,
                            onChanged: (item Value){
                              setState(() {
                                selectedUser = Value;
                              });
                            },
                            items: users.map((item user) {
                              return DropdownMenuItem(
                                  value: user,
                                  child: Row(
                                    children: [
                                      user.icon,
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        user.name,
                                      ),
                                    ],
                                  )
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                      onPressed: //register,
                          (){
                          Fluttertoast.showToast(msg: "Book shared");
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => ShareBooks()));
                      },
                      child: Text(
                        'Share Book',
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

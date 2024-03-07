// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, top: 20, right: 15),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(width: 4, color: Colors.white),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1)),
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb_1UwJbx3UNQbl0LbAlsz7mgq-L6PRdtx4ISjbbQKdJ7dE3VYz3alJYrGLMWNShAxwCY&usqp=CAU"),
                              fit: BoxFit.cover)),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 4, color: Colors.white),
                          color: Colors.blue[300],
                        ),
                        child: Icon(
                          size: 20.0,
                          Icons.camera_enhance,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Form(
                key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Name field cannot be Empty";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(),
                          hintText: "Enter your Name",
                          label: Text("Name"),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "E-mail field cannot be Empty";
                        } else if (!RegExp("^[a-zA-z0-9+_.-]+@[a-zA-z0-9.-]+\$")
                            .hasMatch(value)) {
                          return "Please enter valid E-mail Address";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_rounded),
                          border: OutlineInputBorder(),
                          hintText: "Enter your E-mail",
                          label: Text("Email")),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Phone no. field cannot be Empty";
                        } else if (value.length != 10) {
                          return "Please Enter valid Phoen number";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone),
                          border: OutlineInputBorder(),
                          hintText: "Enter your Phone no.",
                          prefixText: "91+ ",
                          label: Text("Phone no.")),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Address field cannot be Empty";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.multiline,
                      minLines: 1,
                      maxLines: 5,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.home_work_sharp),
                          border: OutlineInputBorder(),
                          hintText: "Enter your address",
                          label: Text("Address")),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Proseesing Data")));
                          }
                        },
                        child: Text("Submit")),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

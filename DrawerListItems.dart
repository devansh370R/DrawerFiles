import 'package:final_major_project/DrawerPages/aboutPage.dart';
import 'package:final_major_project/DrawerPages/editProfilePage.dart';
import 'package:final_major_project/backend/firebase_backend.dart';
import 'package:final_major_project/page/user_booked_tickets.dart';
import 'package:flutter/material.dart';
import 'package:final_major_project/page/home_screen.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              currentAccountPicture: ClipOval(
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb_1UwJbx3UNQbl0LbAlsz7mgq-L6PRdtx4ISjbbQKdJ7dE3VYz3alJYrGLMWNShAxwCY&usqp=CAU",
                ),
              ),
              margin: EdgeInsets.only(bottom: 2.0),
              accountName: Text("Rana Devansh"),
              accountEmail: Text("ranadevansh800@gmail.com"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text("Booking History"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => User_Booked_Tickets(),
                  ));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Edit Profile"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditProfilePage(),
                  ));
            },
          ),
          ListTile(
            leading: Icon(Icons.info_rounded),
            title: Text("About"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutPage(),
                  ));
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            onTap: () {
              signOut(context);
            },
          )
        ],
      ),
    );
  }
}

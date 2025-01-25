import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;


    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 3),
          child: const Text(
            'Profile',
            style: TextStyle(
              fontSize: 23,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          // physics: const BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                SizedBox(
                  height: size.width * 0.08,
                ),
                Center(
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage(
                        'images/WhatsApp Image 2024-11-07 at 16.22.25 (1).jpeg'),
                  ),
                ),
                SizedBox(height: size.width * 0.08,),
                ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.white54,
                  ),
                  title: Text(
                    'Name',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'Riddhima Gupta',
                    style: TextStyle(color: Colors.white54),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.info_outline_rounded,
                    color: Colors.white54,
                  ),
                  title: Text(
                    'About',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'Busy',
                    style: TextStyle(color: Colors.white54),
                  ),
                ), ListTile(
                  leading: Icon(
                    Icons.phone_rounded,
                    color: Colors.white54,
                  ),
                  title: Text(
                    'Phone',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    '+91 10559 55576',
                    style: TextStyle(color: Colors.white54),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';

import 'email_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        title: Text(
          'Account',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AccountScreen()));
            },
            leading: Padding(
              padding: EdgeInsets.only(top: 6),
              child: Icon(
                Icons.security_rounded,
                color: Colors.white54,
              ),
            ),
            title: Text(
              "Security notifications",
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
          ),
          ListTile(
            leading: Padding(
              padding: EdgeInsets.only(top: 6),
              child: Icon(
                Icons.person,
                color: Colors.white54,
              ),
            ),
            title: Text(
              "Passkey",
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => EmailScreen()));
            },
            leading: Padding(
              padding: EdgeInsets.only(top: 6),
              child: Icon(
                Icons.mail_outline,
                color: Colors.white54,
              ),
            ),
            title: Text(
              "Email address",
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
          ),
          const ListTile(
            leading: Padding(
              padding: EdgeInsets.only(top: 6),
              child: Icon(
                color: Colors.white54,
                Icons.password_outlined,
              ),
            ),
            title: Text(
              "Two-step verification",
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
          ),
          ListTile(
            leading: Padding(
              padding: EdgeInsets.only(top: 6),
              child: Icon(
                Icons.send_to_mobile_outlined,
                color: Colors.white54,
              ),
            ),
            title: Text(
              "Change number",
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
          ),
          ListTile(
            leading: Padding(
              padding: EdgeInsets.only(top: 6),
              child: Icon(
                FontAwesomeIcons.fileLines,
                color: Colors.white54,
              ),
            ),
            title: Text(
              "Request account info",
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
          ),
          ListTile(
            onTap: () {
              Get.bottomSheet(
                  Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text(
                      'Anvi',
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    subtitle: Text(
                      '5759799',
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.check_circle_rounded,
                      color: Colors.green,
                    ),
                  ),ListTile(
                    leading: Icon(Icons.add,color: Colors.white,),
                    title: Text(
                      'Add account',
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                  
                ],
              ));
            },
            leading: Padding(
              padding: EdgeInsets.only(top: 6),
              child: Icon(
                Icons.person_add_alt,
                color: Colors.white54,
              ),
            ),
            title: Text(
              "Add account",
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
          ),
          ListTile(
            leading: Padding(
                padding: EdgeInsets.only(top: 6),
                child: Icon(
                  Icons.delete,
                  color: Colors.white54,
                )),
            title: Text(
              "Delete account",
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

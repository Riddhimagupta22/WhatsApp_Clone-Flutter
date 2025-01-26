import 'package:app_clone/Screen/settings/Setting%20Screen/Account%20Screen/change_no.dart';
import 'package:app_clone/Screen/settings/Setting%20Screen/Account%20Screen/delete_account.dart';
import 'package:app_clone/Screen/settings/Setting%20Screen/Account%20Screen/passkeys.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'email_screen.dart';
import 'request_account.dart';
import 'sercurity_notification.dart';
import 'two_stepverification.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        shape: Border(
            bottom: BorderSide(
          color: Color.fromARGB(255, 31, 43, 50),
        )),
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
            onTap: () => Get.to(SecurityNotifications()),
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
            onTap: () => Get.to(Passkeys()),
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
            onTap: () => Get.to(EmailScreen()),
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
          ListTile(
            onTap: () => Get.to(TwoStepverification()),
            leading: const Padding(
              padding: EdgeInsets.only(top: 6),
              child: Icon(
                color: Colors.white54,
                Icons.password_outlined,
              ),
            ),
            title: const Text(
              "Two-step verification",
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
          ),
          ListTile(
            onTap: () => Get.to(ChangeNoPage()),
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
            onTap: ()=> Get.to(RequestAccount()),
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
              Get.bottomSheet( backgroundColor: Colors.white10,

                  Container(
                    height: size.height*.185,
                    child: Column(
                                    children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/WhatsApp Image 2024-11-07 at 16.22.25 (1).jpeg'),
                      ),
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
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Add account',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ),
                                    ],
                                  ),
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
            onTap: ()=> Get.to(DeleteAccount()),
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

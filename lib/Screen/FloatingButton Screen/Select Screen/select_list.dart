import 'package:app_clone/Screen/chats/new_group.dart';
import 'package:app_clone/Screen/widgets/contacts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Call Select/Contacts Call Screen/new_contact.dart';

class Selectlist extends StatelessWidget {
  const Selectlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListTile(
                onTap: ()=>Get.to(NewGroupPage()),
                leading: CircleAvatar(
                  radius: 21,
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.people_rounded,
                    color: Colors.black,
                  ),
                ),
                title: Text(
                  "New Group",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(height: 10,),
            ListTile(
              onTap: ()=>Get.to(NewContact()),
              leading: CircleAvatar(
                radius: 21,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.person_add_alt_1,
                  color: Colors.black,
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Icon(Icons.qr_code_outlined,color: Colors.white,),
              ),
              title: Text(
                "New contact",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: CircleAvatar(
                radius: 21,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.people_outline,
                  color: Colors.black,
                ),
              ),
              title: Text(
                "New community",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: CircleAvatar(
                radius: 21,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.widgets,
                  color: Colors.black,
                ),
              ),
              title: Text(
                "Chat with Ais",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 160,top: 10),
              child: Text("Contacts on WhatsApp",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 15)),
            ),SizedBox(height: 10,),
            Contacts()

          ],
        ),
      ),
    );
  }
}
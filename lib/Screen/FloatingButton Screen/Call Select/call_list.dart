import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Contacts Call Screen/call_link.dart';
import 'Contacts Call Screen/call_no.dart';
import 'Contacts Call Screen/new_contact.dart';

class CallList extends StatelessWidget {
  List<String> images = [
    'images/WhatsApp Image 2024-11-07 at 22.13.49.jpeg',
    'images/WhatsApp Image 2024-11-07 at 22.13.49.jpeg',
    'images/WhatsApp Image 2024-11-07 at 22.10.12.jpeg',
  ];

  List<String> names = [
    "Avi",
    "Ansh",
    "Divya",
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListTile(
                onTap: ()=>Get.to(CallNo()),
                leading: CircleAvatar(
                  radius: 21,
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.link,
                    color: Colors.black,
                  ),
                ),
                title: Text(
                  "New Call link",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: ()=>Get.to(CallLink()),
              leading: CircleAvatar(
                radius: 21,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.dialpad_rounded,
                  color: Colors.black,
                ),
              ),
              title: Text(
                "Call a number",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: ()=> Get.to(NewContact()),
              leading: CircleAvatar(
                radius: 21,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.person_add_alt_1,
                  color: Colors.black,
                ),
              ),
              title: Text(
                "New contact",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Icon(
                  Icons.qr_code_outlined,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 188.0),
              child: Text(
                'Frequently contacted',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: size.width * .042,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap:
                  true, // Ensures ListView only takes as much space as needed
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.3),
                  child: ListTile(
                    onTap: () {
                      // Handle the onTap functionality here (e.g., add contact to group)
                    },
                    leading: CircleAvatar(
                      maxRadius: 19,
                      backgroundImage: AssetImage(images[index]),
                    ),
                    title: Text(
                      names[index],
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(right: 168.0,top: 10,bottom: 10),
              child: Text(
                'Contacts on WhatsApp',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: size.width * .042,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap:
              true, // Ensures ListView only takes as much space as needed
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.3),
                  child: ListTile(
                    onTap: () {
                      // Handle the onTap functionality here (e.g., add contact to group)
                    },
                    leading: CircleAvatar(
                      maxRadius: 19,
                      backgroundImage: AssetImage(images[index]),
                    ),
                    title: Text(
                      names[index],
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

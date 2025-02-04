import 'dart:io';
import 'package:app_clone/Main Screen/components/menubutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../Screen/FloatingButton Screen/Select Screen/select_contacts.dart';

class HomePage extends StatefulWidget {
  const HomePage ({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  File? image;

  Future pickImage() async {
    try {
      await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemporary = File(image!.path);
      this.image = imageTemporary;
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to pick image : $e'),));
    }}

    @override
    Widget build(BuildContext context) {
      var size = MediaQuery
          .of(context)
          .size;
      List<String> images = [
        'images/WhatsApp Image 2024-11-07 at 22.01.51.jpeg',
        'images/WhatsApp Image 2024-11-07 at 22.13.49.jpeg',
        'images/WhatsApp Image 2024-11-07 at 22.10.12.jpeg',
        'images/WhatsApp Image 2024-11-07 at 16.22.24.jpeg',
        'images/WhatsApp Image 2024-11-07 at 16.22.24 (1).jpeg',
        'images/WhatsApp Image 2024-11-07 at 22.01.51.jpeg',
        'images/WhatsApp Image 2024-11-07 at 22.10.12.jpeg',
      ];


      List<String> names = [
        "Avi",
        "Ansh",
        "Vibhav",
        "Divya",
        "Esha",
        "Anvi",
        "Sofia",
      ];

      // Updated msgRead to be a list of maps for easier handling of icons and colors
      List<Map<String, dynamic>> msgRead = [
        {'icon': Icons.done_all_outlined, 'color': Colors.blue},
        {'icon': Icons.done, 'color': Colors.white30},
        {'icon': Icons.done_all_outlined, 'color': Colors.blue},
        {'icon': Icons.done_all_outlined, 'color': Colors.blue},
        {'icon': Icons.done, 'color': Colors.white30},
        {'icon': Icons.done, 'color': Colors.white30},
        {'icon': Icons.done_all_outlined, 'color': Colors.blue},
      ];

      // Corrected list of messages
      List<String> msg = [
        "Hello!",
        "Who is there??",
        "How are u??",
        "Oh really!!",
        "NVM",
        "In dreams",
        "Kind of",
      ];

      // Corrected list of message times
      List<String> msgTime = [
        "13:02",
        "11:00",
        "Yesterday",
        "Yesterday",
        "Monday",
        "Sunday",
        "Saturday",
      ];


      return Scaffold(
        appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  pickImage();
                });
              },
              icon: const Icon(
                Icons.camera_alt_outlined,
                size: 25,
                color: Colors.white,
              ),
            ),
            Popmenubuttonpage(),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 15, left: 9, right: 10, top: 4),
                decoration: BoxDecoration(
                  color: Color(0xff23282c),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        width: size.width * .06,
                        height: size.height * .06,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [Colors.blue, Colors.teal],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Center(
                          child: Container(
                            width: size.width * .038,
                            height: size.height * .038,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff272c30),
                            ),
                          ),
                        ),
                      ),
                    ),
                    hintStyle: const TextStyle(
                      color: Colors.white38,
                      fontWeight: FontWeight.w400,
                    ),
                    hintText: 'Ask Meta AI or Search',
                    border: InputBorder.none,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: size.height * .036,
                        width: size.width * .1,
                        decoration: BoxDecoration(
                          color: Color(0xff20292f),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Center(
                          child: Text(
                            "All",
                            style: TextStyle(color: Colors.white38),
                          ),
                        ),
                      ),
                      Container(
                        height: size.height * .036,
                        width: size.width * .2,
                        decoration: BoxDecoration(
                          color: Color(0xff20292f),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Center(
                          child: Text(
                            "Unread",
                            style: TextStyle(color: Colors.white38),
                          ),
                        ),
                      ),
                      Container(
                        height: size.height * .036,
                        width: size.width * .24,
                        decoration: BoxDecoration(
                          color: Color(0xff20292f),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Center(
                          child: Text(
                            "Favorities",
                            style: TextStyle(color: Colors.white38),
                          ),
                        ),
                      ),
                      Container(
                        height: size.height * .036,
                        width: size.width * .18,
                        decoration: BoxDecoration(
                          color: Color(0xff20292f),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Center(
                          child: Text(
                            "Groups",
                            style: TextStyle(color: Colors.white38),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                            height: size.height * .036,
                            width: size.width * .12,
                            decoration: BoxDecoration(
                              color: Color(0xff20292f),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Center(
                                child: Icon(Icons.add, color: Colors.white38))),
                      ),
                    ],
                  ),
                ),
              ),
              // Chats (recent communication)
              ListView.builder(
                itemCount: images.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: ListTile(
                      onTap: () {},
                      leading: CircleAvatar(
                        maxRadius: 24,
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
                      subtitle: Row(
                        children: [
                          Icon(
                            msgRead[index]['icon'],
                            color: msgRead[index]['color'],
                            size: 20,
                          ),
                          SizedBox(width: size.width * .02),
                          Text(
                            msg[index],
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF636F75),
                            ),
                          ),
                        ],
                      ),
                      trailing: Text(
                        msgTime[index],
                        style: TextStyle(
                          color: Color(0xFF636F75),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: size.width*0.115,
              width: size.width*0.11,
              margin: EdgeInsets.only(bottom: 10),
              child: FloatingActionButton(onPressed: (){},
                backgroundColor: Color.fromARGB(255,24,46,49),
                child: CircleAvatar( radius: 13, backgroundColor:Color.fromARGB(255,24,46,49),
                  backgroundImage: AssetImage('images/prq.png'),),),
            ),
            FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: ()=> Get.to(SelectContactPage()),
              child: Icon(Icons.add_comment),
            ),
          ],
        ),
      );
    }
  }


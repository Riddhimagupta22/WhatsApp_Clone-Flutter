import 'dart:io';
import 'package:app_clone/Screen/settings/settings.dart';
import 'package:app_clone/Screen/updates/status_privacy.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../Screen/updates/create_page.dart';

class Updatepage extends StatefulWidget {
  const Updatepage({super.key});

  @override
  State<Updatepage> createState() => _UpdatepageState();
}

class _UpdatepageState extends State<Updatepage> {

  File? image;

  Future chosseImage() async {
    try {
      await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemporary = File(image!.path);
      this.image = imageTemporary;
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to pick image : $e'),));
    }}
  List<String> whatsappChannelNames = [
    'New18 India',
    'ICC',
    'WhatsApp',
    'Tech Travel Eat',
    'ABP News',
  ];
  List<String> StatusTittles = [
    'My Status',
    'Avi',
    'Samarth',
    'Ansh',
    'Krish',
  ];

  List<String> whatsappChannelSubtitles = [
    'Photo',
    'Photo',
    'Photo',
    'Photo',
    'Photo',
  ];
  List<String> times = [
    '07:00 AM',
    '128:05 AM',
    '07:30 AM',
    '6:00 AM',
    '2:45 PM',
  ];
  List<Image> images = [
    Image.asset('images/news18.jpg'),
    Image.asset('images/icc.jpg'),
    Image.asset('images/whatsapp.jpg'),
    Image.asset('images/travel.jpg'),
    Image.asset('images/abpnews.jpg'),
  ];
  List<Image> statusImages = [
    Image.asset('images/WhatsApp Image 2024-11-07 at 22.01.51.jpeg'),
    Image.asset('images/WhatsApp Image 2024-11-07 at 22.13.49.jpeg'),
    Image.asset('images/WhatsApp Image 2024-11-07 at 22.10.12.jpeg'),
    Image.asset('images/WhatsApp Image 2024-11-07 at 16.22.24 (1).jpeg'),
    Image.asset('images/WhatsApp Image 2024-11-07 at 22.01.51.jpeg'),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Updates",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt_outlined,
                size: 25,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 25,
                color: Colors.white,
              )),
          PopupMenuButton(
            iconSize: 25,
            iconColor: Colors.white,
            onSelected: (value) {
              if (value == 'status_privacy') {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const StatusPrivacypage()));
              } else if (value == 'settings') {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SettingPage()));
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                    value: 'status_privacy',
                    child: Text(
                      "Status privacy",
                      style: TextStyle(color: Colors.white),
                    )),
                PopupMenuItem(
                    onTap: () {
                      _showBottomSheet(context);
                    },
                    value: 'create_channel',
                    child: Text(
                      "Create channel",
                      style: TextStyle(color: Colors.white),
                    )),
                PopupMenuItem(
                    value: 'settings',
                    child: Text(
                      "Settings",
                      style: TextStyle(color: Colors.white),
                    )),
              ];
            },
          )
        ],
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
              child: Icon(Icons.edit,color: Colors.white,),),
          ),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {

                setState(() {
                  chosseImage();
                });

            },
            child: Icon(Icons.camera_alt_rounded),
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15,top: 20),
                  // alignment: Alignment.centerLeft,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Text(
                        'Status',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 101,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: statusImages.length,
                      itemBuilder: (context, index) => Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.green, width: 2),
                                    shape: BoxShape.circle),
                                margin: EdgeInsets.symmetric(horizontal: 7),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: statusImages[index].image,
                                ),
                              ),
                              SizedBox(height: 12),
                              Text(
                                StatusTittles[index],
                                style: TextStyle(fontSize: 15, color: Colors.white),
                              ),
                            ],
                          )),
                ),
                Divider(
                  color: Colors.white12,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Text(
                        'Channels',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 170.0),
                        child: Text(
                          'Explore',
                          style: TextStyle(fontSize: 15, color: Colors.green),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.green,
                          size: 15,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: whatsappChannelNames.length,
                    itemBuilder: (context, index) => ListTile(
                          title: Text(
                            whatsappChannelNames[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          subtitle: Row(
                            children: [
                              Icon(
                                Icons.photo,
                                color: Colors.grey,
                              ),
                              Text(
                                whatsappChannelSubtitles[index],
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          leading: CircleAvatar(
                            backgroundImage: images[index].image,
                            backgroundColor: Colors.white,
                          ),
                          trailing: Text(
                            times[index],
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        )),
                SizedBox(height: 13),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Find channels to follow",
                    style: TextStyle(
                        color: Colors.white54, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 10),
                ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.black,
                      backgroundImage: AssetImage(
                        "images/google.jpg",
                      ),
                    ),
                    title: Text(
                      "Google",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    subtitle: Text(
                      "6.2M followers",
                      style: TextStyle(color: Colors.white54),
                    ),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Follow",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                    )),
                ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.black,
                      backgroundImage: AssetImage(
                        "images/travel.jpg",
                      ),
                    ),
                    title: Text(
                      "Travel Vlog",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    subtitle: Text(
                      "1.1M followers",
                      style: TextStyle(color: Colors.white54),
                    ),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Follow",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                    )),
                ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.black,
                      backgroundImage: AssetImage(
                        "images/maths.jpg",
                      ),
                    ),
                    title: Text(
                      "Neha mam army",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    subtitle: Text(
                      "3.2M followers",
                      style: TextStyle(color: Colors.white54),
                    ),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Follow",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                    )),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: 140,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Color(0xff0a131a),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white54)),
                    child: Center(
                        child: Text(
                      "Explore more",
                      style: TextStyle(color: Colors.green),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Handle Bottom Sheet for creating a channel
void _showBottomSheet(BuildContext context) {
  var size = MediaQuery.of(context).size;
  showModalBottomSheet(
    backgroundColor: Color(0xff0a131a),
    context: context,
    builder: (context) {
      return Container(
        height: size.height * .999,
        child:
            CreateChannelpage(),
      );
    },
  );
}

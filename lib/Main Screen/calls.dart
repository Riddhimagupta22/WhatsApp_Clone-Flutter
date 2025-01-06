import 'package:app_clone/Screen/settings/settings.dart';
import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  List<String> images = [
    'images/WhatsApp Image 2024-11-07 at 22.01.51.jpeg',
    'images/WhatsApp Image 2024-11-07 at 22.13.49.jpeg',
    'images/WhatsApp Image 2024-11-07 at 22.10.12.jpeg',
    'images/WhatsApp Image 2024-11-07 at 16.22.24.jpeg',
    'images/WhatsApp Image 2024-11-07 at 16.22.24 (1).jpeg',
    'images/WhatsApp Image 2024-11-07 at 22.01.51.jpeg',
    'images/WhatsApp Image 2024-11-07 at 22.10.12.jpeg',
  ];

  // Corrected list of names
  List<String> names = [
    "Avi",
    "Ansh",
    "Daksh",
    "Vaani",
    "Mahi",
    "Anvi",
    "Sofia",
  ];

  // Updated msgRead to be a list of maps for easier handling of icons and colors
  List<Map<String, dynamic>> msgRead = [
    {'icon': Icons.call_made_sharp, 'color': Colors.green},
    {'icon': Icons.call_made_sharp, 'color': Colors.green},
    {'icon': Icons.call_made_sharp, 'color': Colors.green},
    {'icon': Icons.call_made_sharp, 'color': Colors.green},
    {'icon': Icons.call_made_sharp, 'color': Colors.green},
    {'icon': Icons.call_made_sharp, 'color': Colors.green},
    {'icon': Icons.call_made_sharp, 'color': Colors.green},
  ];

  // Corrected list of messages
  List<Map<String, dynamic>> icons = [
    {'icon': Icons.phone_rounded},
    {'icon': Icons.phone_rounded},
    {'icon': Icons.videocam_outlined},
    {'icon': Icons.videocam_outlined},
    {'icon': Icons.phone_rounded},
    {'icon': Icons.phone_rounded},
    {'icon': Icons.phone_rounded},
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

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var srcwidth = MediaQuery.of(context).size.width;
    var srcheigth = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calls",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.qr_code_scanner,
                size: 25,
                color: Colors.white,
              )),
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
              onSelected: (value) {
                if (value == 'settings') {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SettingPage()));
                }
              },
              iconColor: Colors.white,
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  backgroundColor: Color(0xff2a2f33),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text(
                                        'Cancel',
                                        style: TextStyle(color: Colors.green),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text(
                                        'OK',
                                        style: TextStyle(color: Colors.green),
                                      ),
                                    )
                                  ],
                                  content: Text(
                                    "Do you want to clear your entire call log?",
                                    style: TextStyle(
                                      color: Color(0xff99a0a1),
                                    ),
                                  ),
                                ));
                      },
                      value: 'clear_call_log',
                      child: Text(
                        "Clear call log",
                        style: TextStyle(color: Colors.white),
                      )),
                  PopupMenuItem(
                      value: 'settings',
                      child: Text(
                        "Settings",
                        style: TextStyle(color: Colors.white),
                      )),
                ];
              })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(Icons.add_ic_call),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Favourites",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  Text(
                    "More",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                    title: Text(
                      'Add favourite',
                      style: TextStyle(
                          color: Colors.white, fontSize: srcwidth * 0.048),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Icon(
                        Icons.favorite_rounded,
                        color: Colors.black,
                        size: srcwidth * 0.05,
                      ),
                    ))),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: srcwidth * 0.04),
              child: Padding(
                padding:
                    EdgeInsets.only(left: srcwidth * 0.0, top: srcwidth * 0.02),
                child: Text(
                  'Recent',
                  style: TextStyle(
                    fontSize: srcwidth * 0.05,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: images.length,
              physics: ScrollPhysics(),
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
                          msgTime[index],
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF636F75),
                          ),
                        ),
                      ],
                    ),
                    trailing: Icon(
                      icons[index]['icon'],
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );

    // child: Expanded(child: CallListview()),
  }
}

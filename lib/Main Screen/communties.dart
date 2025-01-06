import 'package:app_clone/Screen/settings/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Communities extends StatelessWidget {
  const Communities({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    List<String> community1 = [
      'Class Group',
      'Studygroup',
      'General',
    ];
    List<String> community1Subtitles = [
      'importance',
      'Meet at 10 pm',
      'General',
    ];
    List<Image> images = [
      Image.asset('images/maths.jpg'),
      Image.asset('images/groupstudy.jpg'),
      Image.asset('images/general-removebg-preview.png'),
    ];
    List<Image> images2 = [
      Image.asset('images/WhatsApp Image 2024-11-07 at 21.58.11.jpeg'),
      Image.asset('images/travel.jpg'),
      Image.asset('images/general-removebg-preview.png'),
    ];

    List<String> times = [
      '08:00 AM',
      '08:05 AM',
      '09:30 AM',
      '11:00 AM',
      '12:45 PM',
      '02:15 PM',
      '03:30 PM',
      '05:00 PM',
      '06:30 PM',
      '08:00 PM',
      '09:45 PM',
    ];
    List<String> whatsappChannelSubtitles = [
      'Heart Patients.',
      'Hospital Updates.',
      'All reports.',
    ];
    List<String> whatsappChannelNames = [
      'Food',
      'Travel',
      'General',
    ];

    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
        title: Text(
          "Communities",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 23),
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
                color: Colors.white,
                size: 25,
              )),
          PopupMenuButton(
            onSelected: (value) {
              if (value == 'settings') {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SettingPage()));
              }
            },
            iconColor: Colors.white,
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                    value: 'settings',
                    child: Text(
                      "Settings",
                      style: TextStyle(color: Colors.white),
                    ))
              ];
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15, top: 15),
                        height: size.height * .06,
                        width: size.height * .06,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                            shape: BoxShape.rectangle),
                        child: Icon(
                          Icons.group,
                          size: 30,
                        ),
                      ),
                      Positioned(
                        bottom: -13,
                        right: 0,
                        child: Container(
                          width: size.width * .06,
                          height: size.height * .06,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.green),
                          child: Center(
                              child: Icon(
                            Icons.add,
                            size: 18,
                          )),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'New Community',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * .001),
            Divider(thickness: 10, color: Colors.black),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  height: size.height * .47,
                  width: size.height * .06,
                  child: Icon(Icons.group),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey),
                ),
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  "Education",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Divider(
              color: Colors.white12,
            ),
            ListTile(
              leading: Container(
                height: 43,
                width: 43,
                child: Icon(
                  CupertinoIcons.volume_up,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff1A3A2D)),
              ),
              title: Text(
                "Announcements",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                "~ : Busy",
                style: TextStyle(color: Colors.white54),
              ),
              trailing: Text(
                "13/11/24",
                style: TextStyle(color: Colors.white54),
              ),
            ),
            SizedBox(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: community1.length,
                  itemBuilder: (context, index) => ListTile(
                        title: Text(
                          community1[index],
                          style: TextStyle(color: Colors.white),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: images[index].image,
                        ),
                        trailing: Text(
                          times[index],
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        subtitle: Text(
                          community1Subtitles[index],
                          style: TextStyle(color: Colors.grey),
                        ),
                      )),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, top: 0),
              height: 50,
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 15,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        'View all',
                        style: TextStyle(color: Colors.grey),
                      ))
                ],
              ),
            ),
            Divider(thickness: 10, color: Colors.black),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  height: size.height * .47,
                  width: size.height * .06,
                  child: Icon(Icons.group),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey),
                ),
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  "Enjoyment",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(height: 6),
            Divider(
              color: Colors.white12,
            ),
            ListTile(
              leading: Container(
                height: 43,
                width: 43,
                child: Icon(
                  CupertinoIcons.volume_up,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff1A3A2D)),
              ),
              title: Text(
                "Announcements",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                "~ : Have Fun",
                style: TextStyle(color: Colors.white54),
              ),
              trailing: Text(
                "13/11/24",
                style: TextStyle(color: Colors.white54),
              ),
            ),
            SizedBox(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: whatsappChannelNames.length,
                  itemBuilder: (context, index) => ListTile(
                        title: Text(
                          whatsappChannelNames[index],
                          style: TextStyle(color: Colors.white),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: images2[index].image,
                        ),
                        trailing: Text(
                          times[index],
                          style: TextStyle(color: Colors.grey),
                        ),
                        subtitle: Text(
                          whatsappChannelSubtitles[index],
                          style: TextStyle(color: Colors.grey),
                        ),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}

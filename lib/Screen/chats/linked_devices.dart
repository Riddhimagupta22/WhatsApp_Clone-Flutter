import 'package:flutter/material.dart';

class LinkedDevicePage extends StatefulWidget {
  const LinkedDevicePage({super.key});

  @override
  State<LinkedDevicePage> createState() => _LinkedDevicePageState();
}

class _LinkedDevicePageState extends State<LinkedDevicePage> {
  @override
  Widget build(BuildContext context) {
    var arrlinkl = [
      CircleAvatar(
        backgroundImage: NetworkImage(
            "https://th.bing.com/th/id/OIP.NEGLTvFMH1Y99r66zk0JKAHaHa?rs=1&pid=ImgDetMain"),
      )
    ];
    var arrlink = ['Chrome'];
    var arrlinks = ['Last active today at 01:07'];
    var scrw = MediaQuery.of(context).size.width;
    var scrh = MediaQuery.of(context).size.height;

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
          padding: const EdgeInsets.only(left: 1.0),
          child: Text(
            'Linked devices',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Container(
        width: scrw,
        height: scrh,
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.white, width: 0.05)),
          color: const Color(0xff13181C),
        ),
        child: Column(
          children: [
            Container(
              width: scrw * 1,
              height: scrh * 0.3708,
              color: const Color(0xff0B1014),
              child: Column(
                children: [
                  SizedBox(
                    height: scrh * 0.02,
                  ),
                  Container(
                      height: scrh * 0.2,
                      width: scrw * 0.55,
                      child: Image.asset(
                        "images/WhatsApp Image 2025-01-06 at 01.04.46.jpeg",
                        fit: BoxFit.contain,
                      )),
                  Text(
                    "You can link other devices to this account.",
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.white54),
                  ),
                  Text(
                    "Learn more",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: scrh * 0.03,
                  ),
                  Container(
                    height: scrh * 0.05,
                    width: scrw * 0.89,
                    decoration: BoxDecoration(
                        color: Color(0xff26D367),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Text(
                      "Link a device",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    )),
                  ),
                ],
              ),
            ),
            Container(
              height: scrh * 0.01,
              color: Colors.transparent,
              width: scrw * 1,
            ),
            Column(
              children: [
                Container(
                  width: scrw,
                  height: scrh * 0.168,
                  color: const Color(0xff0B1014),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: scrh * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Device Status",
                          style: TextStyle(
                              color: Colors.white54,
                              fontWeight: FontWeight.w400,
                              fontSize: 13),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Tap a device to log out.",
                            style: TextStyle(
                                color: Colors.white54,
                                fontWeight: FontWeight.w400,
                                fontSize: 13.5)),
                      ),
                      SizedBox(),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: arrlinkl.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: arrlinkl[index],
                              title: Text(arrlink[index],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400)),
                              subtitle: Text(
                                arrlinks[index],
                                style: TextStyle(
                                    color: Colors.white54,
                                    fontWeight: FontWeight.w400),
                              ),
                            );
                          })
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Your Personal messages are  ",
                          style: TextStyle(
                              color: Colors.white54,
                              fontWeight: FontWeight.w400,
                              fontSize: 13),
                        ),
                        TextSpan(
                          text: "end to ends",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "encrypted ",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                            ),
                          ),
                          TextSpan(
                            text: "on all your devices.",
                            style: TextStyle(
                                color: Colors.white54,
                                fontWeight: FontWeight.w400,
                                fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

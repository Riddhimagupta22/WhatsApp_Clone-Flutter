import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
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
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              'Settings',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 25,
                  color: Colors.white,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          "images/WhatsApp Image 2024-11-07 at 16.22.25 (1).jpeg",
                          height: 63,
                          width: 63,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Avi",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: size.height * .01,
                            ),
                            Text(
                              "Hey there, I am using whatsapp.",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.white54,
                              ),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.qr_code,
                        color: Color(0xFF1DA75E),
                      ),
                      SizedBox(
                        width: size.width * .01,
                      ),
                      Icon(
                        Icons.add_circle_outline,
                        color: Color(0xFF1DA75E),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Color(0xFF636F75),
                ),
                ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Icon(
                      Icons.vpn_key_outlined,
                      color: Colors.white54,
                    ),
                  ),
                  title: Text(
                    "Account",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  subtitle: Text(
                    "Security nofications,change number",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Icon(
                      Icons.lock_outline,
                      color: Colors.white54,
                    ),
                  ),
                  title: Text(
                    "Privacy",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  subtitle: Text(
                    "Block contacts, disappearing messages",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Icon(
                      FontAwesomeIcons.solidFaceSmile,
                      color: Colors.white54,
                    ),
                  ),
                  title: Text(
                    "Avatar",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  subtitle: Text(
                    "Create, edit,profile photo",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Icon(
                      FontAwesomeIcons.contactBook,
                      color: Colors.white54,
                    ),
                  ),
                  title: Text(
                    "Lists",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  subtitle: Text(
                    "Manage people and groups",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Icon(
                      Icons.chat_outlined,
                      color: Colors.white54,
                    ),
                  ),
                  title: Text(
                    "Chats",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  subtitle: Text(
                    "Theme,wallpapers,chat history",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Icon(
                      Icons.notifications_none,
                      color: Colors.white54,
                    ),
                  ),
                  title: Text(
                    "Notifications",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  subtitle: Text(
                    "Message,group,call tones",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Icon(
                      Icons.data_saver_off_rounded,
                      color: Colors.white54,
                    ),
                  ),
                  title: Text(
                    "Storage and data",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  subtitle: Text(
                    "Network usage, auto-download",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                ListTile(
                  leading: Padding(
                      padding: EdgeInsets.only(top: 6),
                      child: Icon(
                        FontAwesomeIcons.globe,
                        color: Colors.white54,
                      )),
                  title: Text(
                    "App language",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  subtitle: Text(
                    "English (devices language)",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white54,
                    ),
                  ),
                ),
                ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Icon(
                      Icons.help_outline,
                      color: Colors.white54,
                    ),
                  ),
                  title: Text(
                    "Help",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  subtitle: Text(
                    "Help centre, contact us,privacy policy",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Icon(
                      Icons.people,
                      color: Colors.white54,
                    ),
                  ),
                  title: Text(
                    "Invite a friend",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 20, left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Text(
                          "Also from Meta",
                          style: TextStyle(
                              color: Colors.white54,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    FontAwesomeIcons.instagram,
                    color: Colors.white54,
                  ),
                  title: Text(
                    "Open Instagram",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    FontAwesomeIcons.facebook,
                    color: Colors.white54,
                  ),
                  title: Text(
                    "Open Facebook",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    FontAwesomeIcons.threads,
                    color: Colors.white54,
                  ),
                  title: Text(
                    "Open Threads",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

import 'package:app_clone/Screen/settings/Setting%20Screen/App%20Lang/app_lang.dart';
import 'package:app_clone/Screen/settings/Setting%20Screen/Avatar/avatar_screen.dart';
import 'package:app_clone/Screen/settings/Setting%20Screen/Help%20Screen/help_screen.dart';
import 'package:app_clone/Screen/settings/Setting%20Screen/Invite/invite.dart';
import 'package:app_clone/Screen/settings/Setting%20Screen/Privacy%20Screen/privacy_screen.dart';
import 'package:app_clone/Screen/settings/Setting%20Screen/profile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'Setting Screen/Account Screen/account_screen.dart';
import 'Setting Screen/Chat/chat.dart';
import 'Setting Screen/List/list.dart';
import 'Setting Screen/Notification/notification_screen.dart';
import 'Setting Screen/Storage and Data/storage_data.dart';

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
        shape: const Border(
          bottom: BorderSide(
            color: Color.fromARGB(255, 31, 43, 50),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 10.0),
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
            icon: const Icon(
              Icons.search,
              size: 25,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.03,vertical: 5),
              child: InkWell(
                onTap: () => Get.to(ProfilePage()),
                child: Container(
                  height: size.width * 0.22,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: const AssetImage(
                            'images/WhatsApp Image 2024-11-07 at 16.22.25 (1).jpeg'),
                        radius: size.width * 0.09,
                      ),
                      SizedBox(width: size.width * 0.04),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: size.width * 0.04),
                              child: Text(
                                'Riddhima Gupta',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.width * 0.053,
                                ),
                              ),
                            ),
                            SizedBox(height: size.width * 0.01),
                            Text(
                              'Busy',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: size.width * 0.045,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.qr_code,
                              color: const Color(0xff08E23D),
                              size: size.width * 0.065,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add_circle_outline,
                              color: const Color(0xff08E23D),
                              size: size.width * 0.065,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(color: Color.fromARGB(255, 31, 43, 50),),

            // List of settings options
            ListView(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true, // Ensures the ListView fits within the column
              children: [
                Listtile(
                  context,
                  title: "Account",
                  subtitle: "Security notifications, change number",
                  icon: Icons.vpn_key_outlined,
                  index: const AccountScreen(),
                ),
                Listtile(
                  context,
                  title: "Privacy",
                  subtitle: "Block contacts, disappearing messages",
                  icon: Icons.lock_outline,
                  index: const PrivacyScreen(),
                ),
                Listtile(
                  context,
                  title: "Avatar",
                  subtitle: "Create, edit, profile photo",
                  icon: Icons.face,
                  index: const AvatarScreen(),
                ),
                Listtile(
                  context,
                  title: "Lists",
                  subtitle: "Manage people and groups",
                  icon: FontAwesomeIcons.contactBook,
                  index:  ListScreen(),
                ),
                Listtile(context,
                    title: "Notifications",
                    subtitle: "Message, group, call tones",
                    icon: Icons.chat_outlined,
                    index: NotificationScreen()),
                Listtile(context,
                    title: 'Chats',
                    subtitle: 'Theme, wallpapers, chat history',
                    icon: Icons.notifications_none,
                    index: ChatScreen()),
                Listtile(
                  context,
                  title: "Storage and data",
                  subtitle: "Network usage, auto-download",
                  icon: Icons.data_saver_off_rounded,
                  index: StorageandDataScreen(),
                ),
                ListTile(
                  onTap: () {
                    _showBottomSheet(context);
                  },
                  leading: const Icon(FontAwesomeIcons.globe, color: Colors.white54),
                  title: Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: const Text(
                      "App language",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: const Text(
                      "English (device language)",
                      style: TextStyle(fontSize: 15, color: Colors.white54),
                    ),
                  ),
                ),
                Listtile(
                  context,
                  title: "Help",
                  subtitle: "Help center, contact us, privacy policy",
                  icon: Icons.help_outline,
                  index: const HelpScreen(),
                ),

                ListTile(
                  onTap: ()=> Get.to(InvitePage()),
                  leading: const Icon(Icons.people, color: Colors.white54),
                  title: Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: const Text(
                      "Invite a friend",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Text(
                    "Also from Meta",
                    style: TextStyle(
                        color: Colors.white54,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const ListTile(
                  leading:
                      Icon(FontAwesomeIcons.instagram, color: Colors.white54),
                  title: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Open Instagram",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                ),
                const ListTile(
                  leading:
                      Icon(FontAwesomeIcons.facebook, color: Colors.white54),
                  title: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Open Facebook",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                ),
                const ListTile(
                  leading:
                      Icon(FontAwesomeIcons.threads, color: Colors.white54),
                  title: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Open Threads",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget Listtile(BuildContext context,
      {required String title,
      required String subtitle,
      required IconData icon,
      required Widget index}) {
    return ListTile(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => index));
      },
      leading: Icon(icon, color: Colors.white54),

      title: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Text(title,
            style: const TextStyle(fontSize: 17, color: Colors.white)),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Text(subtitle,
            style: const TextStyle(fontSize: 15, color: Colors.white54)),
      ),
    );
  }
}

void _showBottomSheet(BuildContext context) {
  var size = MediaQuery.of(context).size;
  showModalBottomSheet(
    backgroundColor: Color(0xff0a131a),
    context: context,
    builder: (context) {
      return Container(
        height: size.height * .999,
        child:
        AppLang(),
      );
    },
  );
}
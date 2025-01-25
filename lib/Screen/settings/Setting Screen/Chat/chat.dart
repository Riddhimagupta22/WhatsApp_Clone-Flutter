import 'package:app_clone/Screen/widgets/custo-widget.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

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
        title: Padding(
          padding: const EdgeInsets.only(top: 3),
          child: const Text(
            'Chats',
            style: TextStyle(
              fontSize: 23,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: width * 0.07, top: width * 0.04),
              child: Text(
                'Display',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.contrast,
                color: Colors.grey,
              ),
              title: Text(
                'Theme',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: width * 0.04,
                ),
              ),
              subtitle: Text(
                'System default',
                style: TextStyle(color: Colors.grey),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.wallpaper,
                color: Colors.grey,
              ),
              title: Text(
                'Wallpaper',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: width * 0.04,
                ),
              ),
              onTap: () {},
            ),
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.07, top: width * 0.04),
              child: Text(
                'Chat settings',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left: 37),
                child: Text(
                  'Enter is send',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: width * 0.04,
                  ),
                ),
              ),
              trailing: utils().getxswitch(),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 37),
                child: Text(
                  'Enter key will send your message',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left: 37),
                child: Text(
                  'Media visibility',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: width * 0.04,
                  ),
                ),
              ),
              trailing: utils().getxswitch(),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 37),
                child: Text(
                  "Show newly downloaded media in your device's gallery",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left: 37),
                child: Text(
                  'Font size',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: width * 0.04,
                  ),
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 37),
                child: Text(
                  'Medium',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left: 37),
                child: Text(
                  'Voice message transcripts',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: width * 0.04,
                  ),
                ),
              ),
              trailing: utils().getxswitch(),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 37),
                child: Text(
                  'Read new voice messages',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              onTap: () {},
            ),
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.07, top: width * 0.04),
              child: Text(
                'Archived chats',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left: 37),
                child: Text(
                  'Keep chats archived',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: width * 0.04,
                  ),
                ),
              ),
              trailing: utils().getxswitch(),
              subtitle: Padding(
                padding: EdgeInsets.only(left: 37),
                child: Text(
                  'Archived chats will remain archived when you receive a new message',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              onTap: () {},
            ),
            Divider(
              thickness: 0.5,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            ListTile(
              leading: Icon(
                Icons.cloud_upload_outlined,
                color: Colors.grey,
                size: 25,
              ),
              title: Text(
                'Chat backup',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: width * 0.04,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.phonelink_ring_sharp,
                color: Colors.grey,
                size: 25,
              ),
              title: Text(
                'Transfer chats',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: width * 0.04,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.history,
                color: Colors.grey,
                size: 25,
              ),
              title: Text(
                'Chat history',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: width * 0.04,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

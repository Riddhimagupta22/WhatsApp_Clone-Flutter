import 'package:app_clone/Screen/settings/Setting%20Screen/Help%20Screen/channel_report.dart';
import 'package:app_clone/Screen/settings/Setting%20Screen/Help%20Screen/help_center.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        title: Text(
          'Help',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HelpCenter()));
            },
            leading: Padding(
              padding: EdgeInsets.only(top: 6),
              child: Icon(
                Icons.help_outline,
                color: Colors.white54,
              ),
            ),
            title: Text(
              "Help centre",
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
            subtitle: Text(
              "Get help, contact us",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ),
          ListTile(
            leading: Padding(
              padding: EdgeInsets.only(top: 6),
              child: Icon(
                Icons.feed_outlined,
                color: Colors.white54,
              ),
            ),
            title: Text(
              "Term and Privcay Policy",
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ChannelReportPage()));
            },
            leading: Padding(
              padding: EdgeInsets.only(top: 6),
              child: Icon(
                Icons.feedback_outlined,
                color: Colors.white54,
              ),
            ),
            title: Text(
              "Channel reports",
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
          ),
          const ListTile(
            leading: Padding(
              padding: EdgeInsets.only(top: 6),
              child: Icon(
                color: Colors.white54,
                Icons.info_outline_rounded,
              ),
            ),
            title: Text(
              "App info",
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

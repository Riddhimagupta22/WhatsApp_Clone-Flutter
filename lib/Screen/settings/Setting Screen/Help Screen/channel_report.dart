import 'package:flutter/material.dart';

class ChannelReportPage extends StatefulWidget {
  const ChannelReportPage({super.key});

  @override
  State<ChannelReportPage> createState() => _ChannelReportPageState();
}

class _ChannelReportPageState extends State<ChannelReportPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
          'Channel reports',
          style: TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.w400),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
                "No reports",
                style: TextStyle(color: Colors.white, fontSize: 16),
              )),
          Center(
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "If you report a channel, you can see your",
                  style: TextStyle(color: Colors.white30, fontSize: 16),
                ),
              )),
          Center(
              child: Text(
                "report and the outcome here.",
                style: TextStyle(color: Colors.white30, fontSize: 16),
              )),
        ],
      ),
    );
  }
}

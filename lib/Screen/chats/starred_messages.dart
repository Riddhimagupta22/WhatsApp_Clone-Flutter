import 'package:flutter/material.dart';

class StarredMessagePage extends StatefulWidget {
  const StarredMessagePage({super.key});

  @override
  State<StarredMessagePage> createState() => _StarredMessagePageState();
}

class _StarredMessagePageState extends State<StarredMessagePage> {
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
          'Starred messages',
          style: TextStyle(
              color: Colors.white,),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 220),
            child: Center(
              child: CircleAvatar(
                backgroundColor: Color(0xff0a131a),
                radius: 40,
                backgroundImage: AssetImage(
                    "images/starredmessagesjpg-removebg-preview.png"),
              ),
            ),
          ),
          SizedBox(
            height: size.height * .07,
          ),
          Center(
              child: Text(
            "Tap and hold on any",
            style: TextStyle(color: Colors.white30, fontSize: 16),
          )),
          Center(
              child: Text(
            "message in any chat to",
            style: TextStyle(color: Colors.white30, fontSize: 16),
          )),
          Center(
              child: Text(
            "star it,so you can easily",
            style: TextStyle(color: Colors.white30, fontSize: 16),
          )),
          Center(
              child: Text(
            "find it later.",
            style: TextStyle(color: Colors.white30, fontSize: 16),
          )),
        ],
      ),
    );
  }
}

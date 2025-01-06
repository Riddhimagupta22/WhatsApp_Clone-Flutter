import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Enter your phone number",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              iconSize: 22,
              color: Colors.grey,
              splashRadius: 22,
              icon: Icon(Icons.more_vert))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'WhatsApp will need to verify your phone number.',
                    style: TextStyle(color: Colors.grey, height: 1.5),
                    children: [
                      TextSpan(
                        text: "What's my number?",
                        style: TextStyle(color: Colors.blue, height: 1.5),
                      ),
                    ])),
          )
        ],
      ),
    );
  }
}

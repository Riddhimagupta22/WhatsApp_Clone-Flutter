import 'package:flutter/material.dart';
class EmailScreen extends StatelessWidget {
  const EmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        title: Text(
          'Email Address',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Center(child: Icon(Icons.email,color: Colors.green, size:  80,)),
          ),
          Text("Email helps you access your account. It isn't vissible to others",
          style: TextStyle(color: Colors.grey),),

          Text("Email", textAlign: TextAlign.left, style: TextStyle(color: Colors.grey))
        ],
      ),
    );
  }
}

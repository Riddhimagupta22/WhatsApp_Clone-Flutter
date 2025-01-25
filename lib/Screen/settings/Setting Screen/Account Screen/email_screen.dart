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
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Center(
              child: Icon(
            Icons.email,
            color: Colors.green,
            size: 60,
          )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            "Email helps you access your account. It isn't",
            style: TextStyle(
                color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w400),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            "visible to others.",
            style: TextStyle(
                color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(
          height: 32,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 38.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Email',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ])),
        Text(
          'abc112@gmail.com',
          style: TextStyle(
              color: Colors.grey, fontSize: 16, ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 38.0),
          child: Row(
            children: [
              Icon(
                Icons.check_circle_outline_outlined,
                color: Colors.green,
              ),
              Text(
                'Verified',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,            ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

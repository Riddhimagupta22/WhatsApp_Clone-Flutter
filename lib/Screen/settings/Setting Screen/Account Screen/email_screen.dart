import 'package:flutter/material.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({super.key});

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
            padding: const EdgeInsets.only(right: 275.0),
            child: Text(
              'Email',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            )),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 88.0),
                child: Text(
                  'abc112@gmail.com',
                  style: TextStyle(
                      color: Colors.white, fontSize: 16, ),
                ),
              ),
              Icon(Icons.edit_outlined,color: Colors.grey)
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 23.0,top: 10),
          child: Row(
            children: [
              Icon(
                Icons.check_circle_outline_outlined,
                color: Colors.teal,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  'Verified',
                  style: TextStyle(
                      color: Colors.teal,
                      fontSize: 16, ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

import 'package:flutter/material.dart';

import 'call_list.dart';

class CallSelect extends StatefulWidget {
  const CallSelect({super.key});

  @override
  State<CallSelect> createState() => _CallSelectState();
}

class _CallSelectState extends State<CallSelect> {
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
              size: 25,
            )),
        title: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 81.0),
              child: Text(
                "Select contact",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
            Align( alignment: Alignment.topLeft,
              child: Text(
                "72 contacts",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w400, fontSize: 15),
              ),
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.search_rounded,
            color: Colors.white,
            size: 25,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 25,
              )),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Center(
              child: Text('Add up to 31 people',style: TextStyle(
              color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 15),),
            ),
          ),
          Divider(thickness:0.5,color: Color.fromARGB(255, 31, 43, 50),),
          Expanded(child: CallList())

        ],
      ),
    );
  }
}
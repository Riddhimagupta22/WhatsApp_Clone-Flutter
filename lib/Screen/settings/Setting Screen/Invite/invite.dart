import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InvitePage extends StatefulWidget {
  const InvitePage({super.key});

  @override
  State<InvitePage> createState() => _InvitePageState();
}

class _InvitePageState extends State<InvitePage> {
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
        title: Padding(
          padding: const EdgeInsets.only(top: 3),
          child: const Text(
            'Invite a friend',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 21,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.share_outlined,
                  color: Colors.black,
                ),
              ),
              title: Text(
                "Share link",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 17),
              child: Text('From Contacts', style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,size: 30,
                  color: Colors.white70,
                ),
              ),
              title: Text('Keshav',style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),),
              subtitle:Text('+91 80599 32290',style: TextStyle(
                  color: Colors.white54,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),),
              trailing:Text('Invite',style: TextStyle(
                  color: Colors.green,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),),
            )
          ],
        ),
      ),
    );
  }
}


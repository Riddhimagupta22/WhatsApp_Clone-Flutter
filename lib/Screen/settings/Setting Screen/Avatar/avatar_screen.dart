import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

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
            'Avatar',
            style: TextStyle(
                color: Colors.white, fontSize: 23, fontWeight: FontWeight.w400),
          ),
        ),
        body: Column(
          children: [
            Expanded(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 40),
              child: Image.asset(
                "images/der.png",
              ),
            )),
            Text(
              "Say more with Avatars now on WhatsApp",
              style: TextStyle(color: Colors.white),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                child: SizedBox(  height: 42,
                  width: size.width*50,
                  child: ElevatedButton(
                      onPressed: () {},
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.green),
                      child: Text(
                        'Create Your Avatar',
                        style: TextStyle(color: Colors.black),
                      )),
                )),
            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            Expanded(
                child: Column(
              children: [
                ListTile(
                    title: Text(
                  'Learn more',
                  style: TextStyle(color: Colors.lightBlue),
                )),
              ],
            )),
          ],
        ));
  }
}

import 'package:app_clone/Screen/widgets/custo-widget.dart';
import 'package:flutter/material.dart';

class SecurityNotifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          shape: Border(
              bottom: BorderSide(
            color: Color.fromARGB(255, 31, 43, 50),
          )),
          title: Text(
            'Security notifications',
            style: TextStyle(
              color: Colors.white,
              fontSize: size.width * 0.048,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Image(
                image: AssetImage(
                    'images/WhatsApp_Image_2025-01-26_at_16.03.13-removebg-preview.png'),
                height: size.height * .08,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'Your chats and calls are private',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Row(
                children: [
                  Text(
                    "End-to-end encryption keeps your personal\nmessages and calls between you and the\npeople you choose. Not even WhatsApp can\nread or listen to them. This includes your:",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: size.width * 0.038,
                      height: 1.4,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Row(
                children: [
                  Icon(Icons.message_outlined,
                      color: Colors.green, size: size.width * 0.06),
                  SizedBox(width: size.width * 0.03),
                  Expanded(
                    child: Text(
                      'Text and voice messages',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: size.width * 0.042,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Row(
                children: [
                  Icon(Icons.call,
                      color: Colors.green, size: size.width * 0.06),
                  SizedBox(width: size.width * 0.03),
                  Expanded(
                    child: Text(
                      'Audio and video calls',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: size.width * 0.042,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Row(
                children: [
                  Icon(Icons.attach_file,
                      color: Colors.green, size: size.width * 0.06),
                  SizedBox(width: size.width * 0.03),
                  Expanded(
                    child: Text(
                      'Photos, videos and documents',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: size.width * 0.042,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Row(
                children: [
                  Icon(Icons.location_on_outlined,
                      color: Colors.green, size: size.width * 0.06),
                  SizedBox(width: size.width * 0.03),
                  Expanded(
                    child: Text(
                      'Location sharing',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: size.width * 0.042,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Row(
                children: [
                  Icon(Icons.update,
                      color: Colors.green, size: size.width * 0.06),
                  SizedBox(width: size.width * 0.03),
                  Expanded(
                    child: Text(
                      'Status updates',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: size.width * 0.042,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 19),
              child: Row(
                children: [
                  Text(
                    'Learn more',
                    style: TextStyle(
                        color: Colors.lightBlue, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 0.5,
              color: Colors.white12,
            ),
            Padding(
              padding: EdgeInsets.only(left: 19, top: 10),
              child: ListTile(
                title: Text(
                  'Show security notifications on this device',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: utils().getxswitch(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 68.0,left: 33),
              child: RichText(
                  text: TextSpan(
                      text:
                          "Get notified when your security code changes for a contact's phone in an end-to-end encrypted chat. If you have multiple devices, this setting must be enabled on each device where you want to get notifications.",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                      children: [
                    TextSpan(
                      text: 'Learn more',
                      style: TextStyle(
                          color: Colors.lightBlue, fontWeight: FontWeight.w400),
                    )
                  ])),
            )
          ]),
        ));
  }
}

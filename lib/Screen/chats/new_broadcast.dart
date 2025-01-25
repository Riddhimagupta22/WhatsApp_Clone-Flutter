import 'package:flutter/material.dart';

class NewBroadcastPage extends StatelessWidget {
  List<String> images = [
    'images/WhatsApp Image 2024-11-07 at 22.13.49.jpeg',
    'images/WhatsApp Image 2024-11-07 at 22.13.49.jpeg',
    'images/WhatsApp Image 2024-11-07 at 22.10.12.jpeg',
    'images/WhatsApp Image 2024-11-07 at 16.22.24.jpeg',
    'images/WhatsApp Image 2024-11-07 at 16.22.24 (1).jpeg',
    'images/WhatsApp Image 2024-11-07 at 16.22.24 (1).jpeg',
    'images/WhatsApp Image 2024-11-07 at 22.10.12.jpeg',
  ];

  // Corrected list of names
  List<String> names = [
    "Avi",
    "Ansh",
    "Divya",
    "Mukul",
    "Nisha",
    "Tina",
    "Vaibhav",
  ];
  List<String> msg = [
    "Hello!",
    "Who is there??",
    "How are u??",
    "Oh really!!",
    "NVM",
    "let Live",
    "Kind of",
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
        title: Column(
          children: [
            Text(
              'New broadcast',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              '0 0f 11 selected',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 25,
                color: Colors.white,
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(
          Icons.check,
          color: Colors.black,
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: size.height * .01,
            ),
            Center(
              child: Text(
                "Only contacts with +91 80599 XXXXX in thier",
                style: TextStyle(fontSize: 15, color: Colors.white30),
              ),
            ),
            Text(
              " address will receive your broadcast ",
              style: TextStyle(fontSize: 15, color: Colors.white30),
            ),
            Text(
              "messages.",
              style: TextStyle(fontSize: 15, color: Colors.white30),
            ),
            Divider(
              color: Colors.white30,
              height: size.height * .03,
            ),
            ListView.builder(
                itemCount: images.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: ListTile(
                      onTap: () {},
                      leading: CircleAvatar(
                        maxRadius: 24,
                        backgroundImage: AssetImage(images[index]),
                      ),
                      title: Text(
                        names[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        msg[index],
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF636F75),
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}

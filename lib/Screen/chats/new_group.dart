import 'package:app_clone/Screen/widgets/contacts.dart';
import 'package:flutter/material.dart';


class NewGroupPage extends StatelessWidget {
  List<String> images = [
    'images/WhatsApp Image 2024-11-07 at 22.13.49.jpeg',
    'images/WhatsApp Image 2024-11-07 at 22.13.49.jpeg',
    'images/WhatsApp Image 2024-11-07 at 22.10.12.jpeg',
    'images/WhatsApp Image 2024-11-07 at 16.22.24.jpeg',
    'images/WhatsApp Image 2024-11-07 at 16.22.24 (1).jpeg',
    'images/WhatsApp Image 2024-11-07 at 16.22.24 (1).jpeg',
    'images/WhatsApp Image 2024-11-07 at 22.10.12.jpeg',
  ];

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
    "It goes on ...",
  ];

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
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New group',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              'Add members',
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
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(
          Icons.arrow_forward,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        // Wrap everything in a scrollable view
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8, right: 180),
              child: Text(
                "Frequently contacted",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 15),
              ),
            ),
            Contacts(), // Assuming Contacts is another widget that displays frequently contacted people
            Padding(
              padding: const EdgeInsets.only(top: 8, right: 170),
              child: Text(
                "Contacts on WhatsApp",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                    fontSize: 15),
              ),
            ),
            ListView.builder(
              shrinkWrap:
                  true, // Important to prevent conflict with SingleChildScrollView
              physics:
                  NeverScrollableScrollPhysics(), // Disable scrolling in ListView since it's inside a scroll view
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.2),
                  child: ListTile(
                    onTap: () {
                      // Implement the functionality to add the contact to the group
                    },
                    leading: CircleAvatar(
                      maxRadius: 19,
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
              },
            ),
          ],
        ),
      ),
    );
  }
}

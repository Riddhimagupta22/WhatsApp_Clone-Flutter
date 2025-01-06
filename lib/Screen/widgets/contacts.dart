import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  final List<String> images = [
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
    "Avyan",
    "Andrew",
    "Eric",
    "Olivia",
    "Emma",
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
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true, // Ensures ListView only takes as much space as needed
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 0.3),
          child: ListTile(
            onTap: () {
              // Handle the onTap functionality here (e.g., add contact to group)
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
                fontSize: 15,
                color: Color(0xFF636F75),
              ),
            ),
          ),
        );
      },
    );
  }
}

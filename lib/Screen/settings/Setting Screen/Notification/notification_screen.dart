import 'package:app_clone/Screen/widgets/custo-widget.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
            'Notifications',
            style: TextStyle(
              fontSize: 23,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: ListView(
            children: [
              ListTile(
                title: Text(
                  'Conversation tones',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.04,
                  ),),
                subtitle: Text(
                  'Play sounds for incoming and outgoing messages',
                  style: TextStyle(color: Colors.grey),
                ),

                trailing: utils().getxswitch(),
                onTap: () {},
              ),
              ListTile(
                title: Text(
                  'Reminders',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.04,
                  ),),
                subtitle: Text(
                  'Get occasional reminders about messages or status updates you havent seen',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: utils().getxswitch(),
                onTap: () {},
              ),
              Divider( thickness: 0.5,color: Color.fromARGB(255, 31, 43, 50),),
              Text('Messages', style: TextStyle(
                color: Colors.grey,
                fontSize: size.width * 0.034,
              ),),
              ListTile(
                title: Text(
                  'Notification tone',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.04,
                  ),),
                subtitle: Text(
                  'Default (Whop-doop)',
                  style: TextStyle(color: Colors.grey),
                ),
              ), ListTile(
                title: Text(
                  'Vibrate',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.04,
                  ),),
                subtitle: Text(
                  'Default',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ListTile(
                title: Text(
                  'Popup notification',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.04,
                  ),),
                subtitle: Text(
                  'Not available',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ListTile(
                title: Text(
                  'Light',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.04,
                  ),),
                subtitle: Text(
                  'White',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ListTile(
                title: Text(
                  'Use high priority notifications',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.04,
                  ),),
                subtitle: Text(
                  'Show previews of notifications at the top of the screen',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: utils().getxswitch(),
                onTap: () {},
              ),
              ListTile(
                title: Text(
                  'Reaction notifications',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.04,
                  ),),
                subtitle: Text(
                  'Show notifications for reactions to messages you send',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: utils().getxswitch(),
                onTap: () {},
              ),
              Divider( thickness: 0.5,color: Color.fromARGB(255, 31, 43, 50),),
              Text('Calls', style: TextStyle(
                color: Colors.grey,
                fontSize: size.width * 0.034,
              ),),
              ListTile(
                title: Text(
                  'Ringtone',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.04,
                  ),),
                subtitle: Text(
                  'Default (OnePlus new feeling)',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ListTile(
                title: Text(
                  'Vibrate',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.04,
                  ),),
                subtitle: Text(
                  'Default',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Divider( thickness: 0.5,color: Color.fromARGB(255, 31, 43, 50),),
              Text('Status', style: TextStyle(
                color: Colors.grey,
                fontSize: size.width * 0.034,
              ),),
              ListTile(
                title: Text(
                  'Reaction',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.04,
                  ),),
                subtitle: Text(
                  'Show notifications when you get likes on a status',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: utils().getxswitch(),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

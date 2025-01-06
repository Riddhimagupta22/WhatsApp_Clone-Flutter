import 'package:app_clone/Screen/chats/linked_devices.dart';
import 'package:app_clone/Screen/chats/new_broadcast.dart';
import 'package:app_clone/Screen/chats/new_group.dart';
import 'package:app_clone/Screen/chats/payments.dart';
import 'package:app_clone/Screen/chats/starred_messages.dart';
import 'package:app_clone/Screen/settings/settings.dart';
import 'package:flutter/material.dart';

class Popmenubuttonpage extends StatefulWidget {
  const Popmenubuttonpage({super.key});

  @override
  State<Popmenubuttonpage> createState() => _PopmenubuttonpageState();
}

class _PopmenubuttonpageState extends State<Popmenubuttonpage> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        color: const Color(0xff0a131a),
        onSelected: (value) {
          if (value == 'new_group') {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => NewGroupPage()));
          } else if (value == 'new_broadcast') {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => NewBroadcastPage()));
          } else if (value == 'linked_devices') {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const LinkedDevicePage()));
          } else if (value == 'starred_messages') {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const StarredMessagePage()));
          } else if (value == 'payments') {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const PaymentPage()));
          } else if (value == 'settings') {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const SettingPage()));
          }
        },
        iconSize: 25,
        iconColor: Colors.white,
        itemBuilder: (BuildContext context) {
          return [
            const PopupMenuItem(
                value: 'new_group',
                child: Text(
                  "New group",
                  style: TextStyle(color: Colors.white),
                )),
            const PopupMenuItem(
                value: 'new_broadcast',
                child: Text(
                  "New broadcast",
                  style: TextStyle(color: Colors.white),
                )),
            const PopupMenuItem(
                value: 'linked_devices',
                child: Text(
                  "Linked devices",
                  style: TextStyle(color: Colors.white),
                )),
            const PopupMenuItem(
                value: 'starred_messages',
                child: Text(
                  "Starred messages",
                  style: TextStyle(color: Colors.white),
                )),
            const PopupMenuItem(
                value: 'payments',
                child: Text(
                  "Payments",
                  style: TextStyle(color: Colors.white),
                )),
            const PopupMenuItem(
                value: 'settings',
                child: Text(
                  "Settings",
                  style: TextStyle(color: Colors.white),
                )),
          ];
        });
  }
}

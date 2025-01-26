import 'package:flutter/material.dart';
class TimerPage extends StatefulWidget {
  const TimerPage({super.key});

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage>{
  bool click = true;
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
          title: const Text(
            'Profile photo',
            style: TextStyle(
              fontSize:20,
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Start new chats with a disappearing message timer set to',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            click = !click;
                          });
                        },
                        icon: Icon(
                            click ? Icons.circle_outlined : Icons.circle_rounded),
                        color: click ? Colors.white54 : Colors.green,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13.0),
                        child: Text(
                          "24 hours",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 17),
                        ),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              click = !click;
                            });
                          },
                          icon: Icon(
                              click ? Icons.circle_outlined : Icons.circle_rounded),
                          color: click ? Colors.white54 : Colors.green,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 13.0),
                          child: Text(
                            "7 days",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              click = !click;
                            });
                          },
                          icon: Icon(
                              click ? Icons.circle_outlined : Icons.circle_rounded),
                          color: click ? Colors.white54 : Colors.green,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 13.0),
                          child: Text(
                            "90 days",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              click = !click;
                            });
                          },
                          icon: Icon(
                              click ? Icons.circle_outlined : Icons.circle_rounded),
                          color: click ? Colors.white54 : Colors.green,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 13.0),
                          child: Text(
                            "Off",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
                    child: RichText(
                      text: TextSpan( text:
                        "When turned on, all new individual chats will start with disappearing messages set to the duration you select. This setting will not affect your existing chats.",
                        style: TextStyle(
                          fontSize: 15.5,
                          color: Colors.grey,
                        ),
                        children: [
                          TextSpan(text: 'Learn more',style: TextStyle(
                            fontSize: 15.5,
                            color: Colors.lightBlue,
                          ),)
                        ]
                      ),
                    ),
                  ),
                ]))

    );
  }
}

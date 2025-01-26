import 'package:flutter/material.dart';

class StatusPrivacypage extends StatefulWidget {
  const StatusPrivacypage({super.key});

  @override
  State<StatusPrivacypage> createState() => _StatusPrivacypageState();
}

class _StatusPrivacypageState extends State<StatusPrivacypage> {
  bool click = true;
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
            'Status privacy',
            style: TextStyle(
                color: Colors.white, fontSize:23,),
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
                    'Who can see my status updates',
                    style: TextStyle(
                      color: Colors.white54,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13.0),
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
                    padding: const EdgeInsets.symmetric(horizontal: 11.0),
                    child: Text(
                      "My contacts",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                  ),
                ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  Text(
                    "My contacts except...",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  SizedBox(
                    width: size.width * .004,
                  ),
                  Text(
                    "O excluded",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  Text(
                    "Only share with...",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  SizedBox(
                    width: size.width * .10,
                  ),
                  Text(
                    "O included",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
                child: Text(
                  "Changes to your privacy settings won't affect status updates that you've sent already",
                  style: TextStyle(
                    color: Colors.white54,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

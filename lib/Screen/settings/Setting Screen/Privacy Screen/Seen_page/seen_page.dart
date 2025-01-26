import 'package:flutter/material.dart';

class SeenPage extends StatefulWidget {
  const SeenPage ({super.key});

  @override
  State<SeenPage> createState() => _SeenPageState();
}

class _SeenPageState extends State<SeenPage> {
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
          'Last seen and online',
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
                  'Who can see my last seen',
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
                    "Everyone",
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
                      "My contacts ",
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
                      "My contacts expect...",
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
                      "Nobody",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Who can see when I'm online",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
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
                      "Everyone",
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
                      "Same as last seen",
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
              child: Text(
                "If you don't share when you were last seen or online,you won't be able to see when other people were last seen or online.",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

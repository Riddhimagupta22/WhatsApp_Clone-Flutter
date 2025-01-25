import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
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
            'Lists',
            style: TextStyle(
              fontSize: 23,
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                color: Colors.white,
              ))
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          // physics: const BouncingScrollPhysics(),
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 60.0, vertical: 20),
              child: Image.asset(
                "images/efd.png",
              ),
            ),
            Center(
              child: Text(
                'Any list you create become a filter at the',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: size.width * 0.034,
                ),
              ),
            ),
            Center(
              child: Text(
                'top of yoour Chats tab.',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: size.width * 0.034,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 45),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 16, 54, 41),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.add,
                          color: Color.fromARGB(255, 214, 252, 205)),
                      Text(
                        'Create a custom list',
                        style: TextStyle(
                            color: Color.fromARGB(255, 214, 252, 205)),
                      )
                    ],
                  )),
            ),
            Divider(
              thickness: 7,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.057, top: size.width * 0.02),
              child: Text(
                'Your lists',
                style: TextStyle(
                    color: Color.fromARGB(255, 135, 145, 147),
                    fontSize: size.width * 0.038,
                    fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              title: Padding(
                padding: EdgeInsets.only(
                  left: size.width * 0.018,
                ),
                child: Text(
                  'Unread',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.042,
                  ),
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: size.width * 0.018),
                child: Text(
                  'Present',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            ListTile(
              title: Padding(
                padding: EdgeInsets.only(
                  left: size.width * 0.018,
                ),
                child: Text(
                  'Favourities',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.042,
                  ),
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: size.width * 0.018),
                child: Text(
                  'Add people or groups',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            ListTile(
              title: Padding(
                padding: EdgeInsets.only(
                  left: size.width * 0.018,
                ),
                child: Text(
                  'Groups',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.042,
                  ),
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(left: size.width * 0.018),
                child: Text(
                  'Present',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.05, top: size.height * 0.025),
              child: Text(
                'Available presents',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: size.width * 0.042,
                ),
              ),
            ),
            SizedBox(
              height: size.height * .02,
            ),
            Center(
              child: Text(
                'If you remove a present list like Unread or Groups,it',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: size.width * 0.032,
                ),
              ),
            ),
            Center(
              child: Text(
                'will become avaiable here.',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: size.width * 0.032,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

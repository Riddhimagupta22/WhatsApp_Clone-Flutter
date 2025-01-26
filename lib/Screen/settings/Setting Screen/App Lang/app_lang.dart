import 'package:flutter/material.dart';

class AppLang extends StatefulWidget {
  const AppLang({super.key});

  @override
  State<AppLang> createState() => _AppLangState();
}

class _AppLangState extends State<AppLang> {
  bool click = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        shape: const Border(
          bottom: BorderSide(
            color: Color.fromARGB(255, 31, 43, 50),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            color: Colors.grey,
          ),
        ),
        title: Text(
          'App language',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: ListView(
            children: [
              ListTile(
                leading: IconButton(
                  onPressed: () {
                    setState(() {
                      click = !click;
                    });
                  },
                  icon: Icon(
                      click ? Icons.circle_outlined : Icons.circle_rounded),
                  color: click ? Colors.white54 : Colors.green,
                ),
                title: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 11.0),
                  child: Text(
                    "English",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 11.0),
                  child: Text(
                    "(device's language)",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15),
                  ),
                ),
              ),
              ListTile(
                leading: IconButton(
                  onPressed: () {
                    setState(() {
                      click = !click;
                    });
                  },
                  icon: Icon(
                      click ? Icons.circle_outlined : Icons.circle_rounded),
                  color: click ? Colors.white54 : Colors.green,
                ),
                title: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 11.0),
                  child: Text(
                    "hi",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 11.0),
                  child: Text(
                    "Hindi",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15),
                  ),
                ),
              ),
              ListTile(
                leading: IconButton(
                  onPressed: () {
                    setState(() {
                      click = !click;
                    });
                  },
                  icon: Icon(
                      click ? Icons.circle_outlined : Icons.circle_rounded),
                  color: click ? Colors.white54 : Colors.green,
                ),
                title: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 11.0),
                  child: Text(
                    "mr",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 11.0),
                  child: Text(
                    "Marathi",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15),
                  ),
                ),
              ),
              ListTile(
                leading: IconButton(
                  onPressed: () {
                    setState(() {
                      click = !click;
                    });
                  },
                  icon: Icon(
                      click ? Icons.circle_outlined : Icons.circle_rounded),
                  color: click ? Colors.white54 : Colors.green,
                ),
                title: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 11.0),
                  child: Text(
                    "gu",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 11.0),
                  child: Text(
                    "Gujarati",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15),
                  ),
                ),
              ),
              ListTile(
                leading: IconButton(
                  onPressed: () {
                    setState(() {
                      click = !click;
                    });
                  },
                  icon: Icon(
                      click ? Icons.circle_outlined : Icons.circle_rounded),
                  color: click ? Colors.white54 : Colors.green,
                ),
                title: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 11.0),
                  child: Text(
                    "ta",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 11.0),
                  child: Text(
                    "Tamil",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15),
                  ),
                ),
              ),
              ListTile(
                leading: IconButton(
                  onPressed: () {
                    setState(() {
                      click = !click;
                    });
                  },
                  icon: Icon(
                      click ? Icons.circle_outlined : Icons.circle_rounded),
                  color: click ? Colors.white54 : Colors.green,
                ),
                title: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 11.0),
                  child: Text(
                    "bn",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 11.0),
                  child: Text(
                    "Bangla",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

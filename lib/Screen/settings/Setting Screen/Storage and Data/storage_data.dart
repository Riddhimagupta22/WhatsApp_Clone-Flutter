
import 'package:app_clone/Controller/controller.dart';
import 'package:app_clone/Screen/widgets/custo-widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class StorageandDataScreen extends StatefulWidget {
  @override
  State<StorageandDataScreen> createState() => _StorageandDataScreenState();
}

class _StorageandDataScreenState extends State<StorageandDataScreen> {
  SwitchController switchController = Get.put(SwitchController());
  bool flag = true;


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
            'Storage and Data',
            style: TextStyle(
              fontSize:23,
              color: Colors.white,
            ),
          ),
        ),

      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [

            ListTile(
              leading: Icon(Icons.folder_outlined,color: Colors.grey,),
              title: Text('Manage Storage',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.04,
                ),),
              subtitle: Text('3.8 GB',
                style: TextStyle(
                    color: Colors.grey
                ),
              ),
              onTap: (){
                print('Tapped on Manage Storage');
              },
            ),
            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            ListTile(
              leading: Icon(Icons.data_saver_off,color: Colors.grey,),
              title: Text('Network usage',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.04,
                ),),
              subtitle: Text('12.2 GB sent • 10.3 GB received',
                style: TextStyle(
                    color: Colors.grey
                ),
              ),
              onTap: (){
                print('Tapped on Network Usage');
              },
            ),
            ListTile(

              title: Padding(
                padding: const EdgeInsets.only(left:37),
                child: Text('Use less data for calls',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.04,
                  ),),
              ),
              trailing: utils().getxswitch(),

              onTap: (){
                print('Changed value for using data for calls');
              },
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left:39),
                child: Text('Proxy',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.04,
                  ),),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(left:39),
                child: Text('Off',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              onTap: (){
                print('Tapped on Network Usage');
              },
            ),
            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            ListTile(
              leading: Icon(Icons.hd_outlined,color: Colors.grey,),
              title: Text('Media upload quality',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width * 0.04,
                ),),
              subtitle: Text('HD quality',
                style: TextStyle(
                    color: Colors.grey
                ),
              ),
              onTap: (){
                print('Tapped on Network Usage');
              },
            ),

            Divider(
              thickness: 1,
              color: Color.fromARGB(255, 31, 43, 50),
            ),
            ListTile(
              title: Text('Media auto-download',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: size.width * 0.04,
                ),),
              subtitle: Text('Voice messages are always automatically \ndownloaded',
                style: TextStyle(
                    color: Colors.grey
                ),
              ),
              onTap: (){

              },
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left:39),
                child: Text('When using mobile data',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.04,
                  ),),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(left:39),
                child: Text('Photos',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left:39),
                child: Text('When connected on Wi-Fi',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.04,
                  ),),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(left:39),
                child: Text('All media',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
            ),ListTile(
              title: Padding(
                padding: const EdgeInsets.only(left:39),
                child: Text('When roaming',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * 0.04,
                  ),),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(left:39),
                child: Text('No media',
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

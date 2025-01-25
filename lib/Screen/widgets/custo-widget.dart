
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controller/controller.dart';

class utils{
  final switchController = Get.put(SwitchController());
  bool flag = true;
  Widget getxswitch(){
    return Obx(()=>Switch(
        activeTrackColor: Colors.green,
        activeColor: Colors.black,
        inactiveTrackColor: Color.fromRGBO(17,25,28,1.0),
        inactiveThumbColor: Colors.grey,

        value: switchController.dataforcalls.value,
        onChanged: (value){
          print('Switch Value: $value');
          switchController.dataforcalls(value);
          if (value=true){
            print("Switch turned ON");

          }else if(value=false){
            print("Switch turned OFF");
          }
        }));
  }

}

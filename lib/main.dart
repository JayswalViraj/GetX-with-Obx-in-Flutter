import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_in_obx/controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Controller obj = Get.put(Controller());//create obj with getx or
  //Controller obj = new Controller();//working this method

  // any other class not create new object
  //Controller obj= Get.find();// getx will automatically find the instance we used previously, no matter where it is in the widget tree. Now, if we change the value of a controller variable from PageSeven, it'll be updated in PageOne as well.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Getx With Obx in Flutter"),
        ),
        body: Center(
          child: Container(
            child: Obx(
              () => GestureDetector(
                child: Text(
                  obj.counter.toString(),
                  style: TextStyle(fontSize: 40),
                ),
                onTap: () {
                  obj.increment();
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:getx_flutter/controllerclass.dart';

import 'modelclass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    // here we are using the getx GetMaterialApp instead of material app by this
    // we can use features of getx in our entire program
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: Log2Page(),
    );
  }
}
class Log2Page extends StatelessWidget {
  Controller c = Get.put(Controller());
  @override
  Widget build(BuildContext context) {

    print("objext");

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(
                      () => Column(
                        children: [
                          Text('Obx: ${c.log2}',style:const  TextStyle(fontSize: 50),),
                          Text('Obx: ${c.title}',style:const  TextStyle(fontSize: 50),)

                        ],
                      )
              ),



            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: c.change,

      ),
    );
  }
}



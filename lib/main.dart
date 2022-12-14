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

  @override
  Widget build(BuildContext context) {

    print("objext");

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // here we are using the GetX<TYpe of Controller>
              // Controller is a class name which we want to acess
              //and init initailize the contoller
              //builder(mycontroller) createa the instance of the controller class
              // so we can acess the all properties of the that class by the instancd
              // we do not need the obx() here
              GetX<Controller>(
                init: Controller(),
                builder: (mycontroller){
                  return  Column(
                                children: [
                                  Text('Obx: ${mycontroller.log2}',style:const  TextStyle(fontSize: 50),),
                                  Text('Obx: ${mycontroller.title}',style:const  TextStyle(fontSize: 50),)

                                ],
                              );
                },

              )

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // here we are search the the controller to create instance and use it
          // this will search the controller
          // you must initalized the controller in somewhere otherwise it wont find it
          Get.find<Controller>().change();
        }

      ),
    );
  }
}



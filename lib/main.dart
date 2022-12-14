import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:getx_flutter/controllerclass.dart';



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
              // here we are calling the controller class
              // here we are using the GetBuilder because we are performing the simple state
              // management
              GetBuilder<Controller>(
                //here we are initializing the controllerclass
                init: Controller(),
                  // here we are creating the instance of the contollerclass

                  builder: (value){
                return Column(
                  children: [
                    // here we are using the instance to get the data from that class
                    Text(value.count.toString(),style:const  TextStyle(fontSize: 50),),
                   const  SizedBox(height: 50,),
                    Text(value.title.toString(),style: const TextStyle(fontSize: 50),)
                  ],
                );
                  })




            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // without creating the instance of the controller class
          // we are acess it with get.fint
          // it will find the class and its properties
          Get.find<Controller>().change();

        }

      ),
    );
  }
}



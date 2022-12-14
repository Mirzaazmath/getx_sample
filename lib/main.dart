import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/state_manager.dart';

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
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  // here we are make the entire class as observer
  var student=Student(name: 'mirza', age: 24).obs;



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:const  Text("GetX Sample"),
      ),
      body: Center(

        // note if you want to  update the ui you must have to wrap it with  Obx((){}) by this when ever there is
        // any change made the observer value it updqte the ui automatically
        child: Obx((){

          return Text(student.value.name,style:const  TextStyle(fontSize: 50));
        })


      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        // if you want to change the value you need to use the update function with class that
        // you want to update
       student.update((val) {
         val?.name=val.name.toUpperCase();
       });



      },child: const Icon(Icons.add),),
    );

  }
}



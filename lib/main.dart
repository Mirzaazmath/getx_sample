import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/state_manager.dart';

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
// As you see we must have to make the variable obverver by using two ways first one is
  var number=RxInt(0) ;
  // second one is this
  //var number=0.obs
  // both work fine

  // this is the increament function
  void increament(){
    number++;
  }

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

          return Text(number.string,style:const  TextStyle(fontSize: 50));
        })


      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        // here we are calling the increamet function to increase value
        increament();
      },child: const Icon(Icons.add),),
    );

  }
}



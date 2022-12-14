import 'package:get/get.dart';

class Controller extends GetxController {
  // this is a normal int
  int count=0;
  List<String>titlelist=["One","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten"];
  // this is a String
  var title="Zero";
// this is also the normal function
  void change(){


    if(count<=9){
      title=titlelist[count];
    }else{
      title="So On";
    }
    count++;
    // but here is the magic
    // this update method update the values
    // and notify to its listers
    // this comes with GetX
    update();


  }
}

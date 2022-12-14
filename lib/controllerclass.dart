import 'package:get/get.dart';

class Controller extends GetxController {
  RxInt log2 = 0.obs;
  List<String>titlelist=["One","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten"];
  var title="Zero".obs;

  void change(){


    if(log2<=9){
      title=titlelist[log2.toInt()].obs;
    }else{
      title="So On".obs;
    }
    log2++;


  }
}

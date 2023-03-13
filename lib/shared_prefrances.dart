import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class share extends GetxController {
  String? username;
  getpref() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    username = pref.getString("name");
    update();
    print("getname");
  }

  setpref() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("name", "abdo");
    print("save name");
  }

  deletpref() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.remove("name");
    print("delete name");
  }
}

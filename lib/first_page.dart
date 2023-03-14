import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_prefrances/registeration.dart';
import 'package:share_prefrances/shared_prefrances.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';

class first extends StatelessWidget {
   first({Key? key}) : super(key: key);

  var x = reg();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                MyCache.SetString(
                    key: MyChachKey.email, value: "abdo@gmail.com");
                print("${MyChachKey.email.toString()}");
              },
              child: Text("save")),
          ElevatedButton(
              onPressed: () {
                MyCache.GetString(key: MyChachKey.email);
              },
              child: Text("get")),
          Text("${MyChachKey.email.toString()}"),
        ],
      )),
    );
  }
}

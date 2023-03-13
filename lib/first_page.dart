import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_prefrances/registeration.dart';
import 'package:share_prefrances/shared_prefrances.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}


class _firstState extends State<first> {
  var x=reg();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          ElevatedButton(onPressed: () {MyCache.SetString(key: MyChachKey.email, value: x.email.toString());}, child: Text("save")),
          ElevatedButton(onPressed: () {MyCache.GetString(key: MyChachKey.email);}, child: Text("get")),

          Text(""),
        ],
      )),
    );
  }
}


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_prefrances/shared_prefrances.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}


class _firstState extends State<first> {
share shar=share();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          ElevatedButton(onPressed: () {shar.setpref();}, child: Text("save")),
          ElevatedButton(onPressed: () {shar.getpref();print(shar.username);}, child: Text("get")),
          ElevatedButton(onPressed: () {shar.deletpref();}, child: Text("delet")),
          Text("${shar.username}"),
        ],
      )),
    );
  }
}


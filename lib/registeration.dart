import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:share_prefrances/sign_in.dart';
import 'package:share_prefrances/sign_in.dart';


class reg extends StatelessWidget {
  reg({Key? key}) : super(key: key);
  String? email;
  String? password;
 GlobalKey<FormState> Formkey =GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Form(
            key: Formkey,
            child: Column(
              children: [
                TextFormField(
                  onChanged: (e) {
                    email = e;
                  },
                ),
                TextFormField(
                  onChanged: (e) {
                    password = e;
                  },
                ),
                ElevatedButton(
                    onPressed: () async {
                      try {
                        var auth = FirebaseAuth.instance;
                        UserCredential user =
                            await auth.createUserWithEmailAndPassword(
                                email: "$email", password: "$password");
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content:
                                Text("There was an error , please try again")));
                      }
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content:
                          Text("Success")));
                    },
                    child: Text("save")),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn(),));
                }, child: Text("sign in page"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

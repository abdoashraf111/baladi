import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class reg extends StatelessWidget {
  reg({Key? key}) : super(key: key);
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
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
                  child: Text("save"))
            ],
          ),
        ),
      ),
    );
  }
}

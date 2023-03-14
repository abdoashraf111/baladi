import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              email = value;
            },
          ),
          TextField(
            onChanged: (value) {
              password = value;
            },
          ),
          ElevatedButton(
              onPressed: () async {
                try {
                  var auth = FirebaseAuth.instance;
                  UserCredential user = await auth.signInWithEmailAndPassword(
                      email: "$email", password: "$password");
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("sign in")));
                } catch (e) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("error")));
                }

              },
              child: Text("sign in")),
        ],
      ),
    );
  }
}

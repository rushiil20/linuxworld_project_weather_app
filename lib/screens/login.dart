import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  var authc = FirebaseAuth.instance;

  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  email = value;
                },
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true,
                onChanged: (value) {
                  password = value;
                },
                decoration: InputDecoration(hintText: "Enter Password",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Material(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(10),
                elevation: 10,
                child: MaterialButton(
                  minWidth: 200,
                  height: 40,
                  child: Text('Login'),
                  onPressed: () async {
                    try {
                      var userSignin = await authc.signInWithEmailAndPassword(email: email, password: password);
                      print(userSignin);

                      if (userSignin != null) {
                        Navigator.pushNamed(context, "page");
                      }
                    } catch (e) {
                      print (e);
                    }
                  },
                )
              )
            ]
          ),
        )
      ),
    );
  }
}
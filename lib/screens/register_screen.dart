import 'package:flutter/material.dart';
import 'package:hello_world/screens/home_screen.dart';
import 'package:hello_world/screens/login_screen.dart';

class Registration extends StatefulWidget {
  static const String id = 'REGISTRATION';
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  String email;
  String password;

  // final FirebaseAuth _auth = FirebaseAuth.instance;

  // Future<void> registerUser() async {
  //   FirebaseUser user = await _auth.createUserWithEmailAndPassword(
  //     email: email,
  //     password: password,
  //   );

  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => HomeScreen(),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text("Hanette Chat"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Hero(
              tag: 'logo',
              child: Container(
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Enter your username",
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.symmetric(horizontal: 40.0),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white, width: 2.0),
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: 10.0,
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: "Enter your username",
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
          ),
          CustomButton(
            text: "Register",
            callback: () async {
              // await registerUser();
            },
          )
        ],
      ),
    );
  }
}

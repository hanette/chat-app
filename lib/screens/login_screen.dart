import 'package:flutter/material.dart';
import 'package:hello_world/screens/home_screen.dart';
import 'package:hello_world/screens/register_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'LOGIN';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: 'logo',
                child: Container(
                  width: 100.0,
                  child: Image.asset('assets/images/logo.png'),
                ),
              ),
              Text(
                ' Hanette Chat',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: "Enter your username",
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white, width: 2.0),
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
          ),
          CustomButton(
            text: 'Login',
            callback: () {
              Navigator.of(context).pushNamed(HomeScreen.id);
            },
          ),
          CustomButton(
            text: 'Sign Up',
            callback: () {
              Navigator.of(context).pushNamed(Registration.id);
            },
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback callback;
  final String text;

  const CustomButton({Key key, this.callback, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Color(0xFFF0533B),
        elevation: 6.0,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: callback,
          minWidth: 200.0,
          height: 45.0,
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 17.0),
          ),
        ),
      ),
    );
  }
}

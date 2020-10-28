import 'package:flutter/material.dart';
import 'package:hello_world/screens/login_screen.dart';
import 'package:hello_world/screens/home_screen.dart';
import 'package:hello_world/screens/register_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF393959),
        accentColor: Color(0xFFD1E1FF),
      ),
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        Registration.id: (context) => Registration(),
        HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }
}

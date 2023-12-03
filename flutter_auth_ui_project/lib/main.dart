
import 'package:flutter/material.dart';
import 'package:flutter_auth_ui_project/pages/signup.dart';
import 'package:flutter_auth_ui_project/pages/welcome.dart';
import 'package:flutter_auth_ui_project/pages/login.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      initialRoute: "/",
     routes:{
      "/" :(context) => const Welcome(),
      "/login" :(context) => const Login(),
      "/signup" :(context) => const Signup(),

     },
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutteritravelzw/Primary/screens/home_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'itravelzw',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
        scaffoldBackgroundColor: Colors.blueGrey[50], colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.teal[50]),
      ),
      home: HomeScreen(),
    );
  }
}
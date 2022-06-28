import 'package:flutter/material.dart';
import 'package:platform_6_3/pages/home_page.dart';
import 'package:platform_6_3/pages/homework/log_in_page.dart';
import 'package:platform_6_3/pages/homework/user_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const UserPage(),
      routes: {
        HomePage.id : (context) => const HomePage(),
        UserPage.id : (context) => const UserPage(),
        LogInPage.id : (context) => const LogInPage(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:platform_6_3/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';
import '../services/pref_service.dart';

class HomePage extends StatefulWidget {

  static const String id = 'home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void _doLogin(){
    String email = emailController.text.toString().trim();
    String password = passwordController.text.toString().trim();
    User user = User.from(email: email,password: password);
    Prefs.storeUser(user);

    Prefs.loadUser().then((user) => {
      stdout.write(user?.email)
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20,right: 20),
              height: 50,
              padding: const EdgeInsets.only(left: 15,right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey.shade200
              ),
              child:  TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: "Email",
                  border: InputBorder.none,
                  icon: Icon(Icons.email,color: Colors.blue,)
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              margin: const EdgeInsets.only(left: 20,right: 20),
              height: 50,
              padding: const EdgeInsets.only(left: 15,right: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey.shade200
              ),
              child:  TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                    hintText: "Password",
                    border: InputBorder.none,
                    icon: Icon(Icons.lock,color: Colors.blue,)
                ),
              ),
            ),
           const SizedBox(height: 10,),

            Container(
              margin: const EdgeInsets.only(left: 20,right: 20),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.blue
              ),
              child: ElevatedButton(
                onPressed: _doLogin,
                child: const Text("Login",style: TextStyle(color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

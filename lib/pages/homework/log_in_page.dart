import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_6_3/model/user_home_task_model.dart';

import '../../services/pref_service.dart';

class LogInPage extends StatefulWidget {

  static const String id = 'log_in_page';

  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void _doLogin(){
    String email = emailController.text.toString().trim();
    String password = passwordController.text.toString().trim();
    UserHomeTaskModel userHomeTaskModel = UserHomeTaskModel.from(email: email,password: password);
    Prefs.storeUserHometask(userHomeTaskModel);

    Prefs.loadUser().then((user) => {
      stdout.write(user?.email)
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(icon: const Icon(CupertinoIcons.arrow_left,color: Colors.black,), onPressed: () {Navigator.pop(context);},),
      ),
      body: SingleChildScrollView(
        child: Column(
          children:  [
            const Center(child: Text("Let's Get Started",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
            const SizedBox(height: 10),
            const Center(
              child: Text("Create an account to Q Allure to get all features",style: TextStyle(color: Colors.grey),),
            ),
            const SizedBox(height: 30,),
            
            Container(
              padding: const EdgeInsets.only(left: 10),
              height: 70,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 1,color: Colors.blueAccent)
              ),
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_outline),
                    hintText: "Name",
                      border: InputBorder.none
                  ),
                ),
              )
            ),
            const SizedBox(height: 15,),


            Container(
                padding: const EdgeInsets.only(left: 10),
                height: 70,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 1,color: Colors.grey)
                ),
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail_outline),
                        hintText: "Email",
                        border: InputBorder.none
                    ),
                  ),
                )
            ),
            const SizedBox(height: 15,),


            Container(
                padding: const EdgeInsets.only(left: 10),
                height: 70,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 1,color: Colors.grey)
                ),
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone_android),
                        hintText: "Phone",
                        border: InputBorder.none
                    ),
                  ),
                )
            ),
            const SizedBox(height: 15,),


            Container(
                padding: const EdgeInsets.only(left: 10),
                height: 70,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 1,color: Colors.grey)
                ),
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_open),
                        hintText: "Password",
                        border: InputBorder.none
                    ),
                  ),
                )
            ),
            const SizedBox(height: 15,),


            Container(
                padding: const EdgeInsets.only(left: 10),
                height: 70,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 1,color: Colors.grey)
                ),
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_open),
                        hintText: "Confirm password",
                        border: InputBorder.none
                    ),
                  ),
                )
            ),
            const SizedBox(height: 40,),

            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    primary: Colors.blueAccent.shade700
                  ),
                  child: const Text("CREATE",style: TextStyle(fontWeight: FontWeight.bold),)),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const Text("Already have an account?",style: TextStyle(fontSize: 16),),
                TextButton(onPressed: (){}, child: const Text("Log in here",style: TextStyle(fontSize: 16),))
              ],

            )

          ],
        ),
      ),
    );
  }
}

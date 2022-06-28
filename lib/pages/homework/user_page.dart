import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {

  static const String id = 'user_page';
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/intro.png",height: 400,width: 400,),
            const Text("Welcome back!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            const SizedBox(height: 10,),
            const Text("Log in to your existent account of Q Allure",style: TextStyle(color: Colors.grey,fontSize: 15),),
            const SizedBox(height: 10,),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.only(left: 20),
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(width: 1,color: Colors.blue.shade500)
              ),
              child:  const Center(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Email",
                    prefixIcon: Icon(Icons.person_outline),
                    border: InputBorder.none
                  ),
                ),
              ),
            ),



            const SizedBox(height: 10,),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.only(left: 20),
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 1,color: Colors.blue.shade500)
              ),
              child:  const Center(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock_open),
                      border: InputBorder.none
                  ),
                ),
              ),
            ),

             Padding(
              padding: const EdgeInsets.only(left: 220),
              child: TextButton(
                  onPressed: (){},
                  child: const Text("Forgot Password?",style: TextStyle(
                    color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),),)
            ),
          const SizedBox(height: 5,),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(style: ElevatedButton.styleFrom(
                shape: const StadiumBorder()
              ),

                onPressed: (){},
                child: const Text("LOG IN",style: TextStyle(fontSize: 20),),
              ),
            ),
            const SizedBox(height: 10,),
            
            const Text("Or Connect using",style: TextStyle(
              color: Colors.grey
            ),),
            const SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Container(
                padding: const EdgeInsets.only(left: 20),
                height: 50,
                width: 150,
                child: ElevatedButton(
                    onPressed: (){},
                    child:  Row(
                      children: const [
                        Icon(Icons.facebook_outlined),
                        SizedBox(width: 3,),
                        Text("Facebook")
                      ],
                    )),
              ),
                const SizedBox(width: 10,),
                SizedBox(

                  // padding: const EdgeInsets.only(left: 20),
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red
                    ),
                      onPressed: (){},
                      child:  Row(
                        children:  const [
                          Icon(Icons.g_mobiledata_rounded,size: 40,),
                          SizedBox(width: 3,),
                          Text("Google")
                        ],
                      )),
                ),

              ],
            ),
            const SizedBox(height: 5,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const Text("Don't have account?",),
                const SizedBox(width: 7,),
                TextButton(onPressed: (){},
                    child: const Text("Sing Up",style: TextStyle(color: Colors.blueAccent),))
              ],
            )


          ],
        ),
      ),
    );
  }
}

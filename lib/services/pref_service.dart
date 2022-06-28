import 'dart:convert';

import 'package:platform_6_3/model/user_home_task_model.dart';
import 'package:platform_6_3/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Prefs{


  // Name related
  static void storeName(String name)async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("name", name);
  }

  static Future<String?> loadName()async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString("name");
  }

  static Future<bool> removeName()async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.remove("name");
  }

  // User related
  static void storeUser(User user)async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String stringUser = jsonEncode(user);
    preferences.setString("user", stringUser);
  }

  static Future<User?> loadUser()async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? stringUser = preferences.getString('user');
    if(stringUser == null || stringUser.isEmpty){
      return null;
    }
    Map<String,dynamic> map = jsonDecode(stringUser);
    return User.fromJson(map);
  }

  static Future<bool> removeUser()async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.remove("user");
  }

  // related userHomeTask
  static void storeUserHometask(UserHomeTaskModel userHomeTaskModel)async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String stringUser = jsonEncode(userHomeTaskModel);
    preferences.setString("user", stringUser);
  }

  static Future<UserHomeTaskModel?> loadUserHometask()async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? stringUser = preferences.getString('user');
    if(stringUser == null || stringUser.isEmpty){
      return null;
    }
    Map<String,dynamic> map = jsonDecode(stringUser);
    return UserHomeTaskModel.fromJson(map);
  }

  static Future<bool> removeUserHometask()async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.remove("user");
  }
}
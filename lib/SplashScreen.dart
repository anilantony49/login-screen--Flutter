import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sample3/Login_screen.dart';
import 'package:sample3/home_screen.dart';
import 'package:sample3/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {

  
  const SplashScreen({ Key? key }) : super(key: key);
  

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}



class _SplashScreenState extends State<SplashScreen> {
  @override 
 void initState(){
  checkuserLogin();
  // gotoLogin();
    super.initState();
  }
 @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/images/flutter.png") ,
      ),
    );
  }

 Future< void >gotoLogin( )async{
await  Future.delayed(const Duration(seconds: 3));
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
    return LoginScreen();
  }));
}

void checkuserLogin()async{
  final sharedpref= await SharedPreferences.getInstance();
final value=sharedpref.getBool(SAVE_KEY);
if(value==null||value==false){
  gotoLogin();
}else{
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>
    const HomeScreen()
  ));
}
 
}
}


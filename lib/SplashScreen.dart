import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sample3/screen_home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}



class _SplashScreenState extends State<SplashScreen> {
  @override 
 void initState(){
  gotoLogin();
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
await  Future.delayed(Duration(seconds: 3));
  Navigator.of(context).push(MaterialPageRoute(builder: (context){
    return ScreenHome();
  }));
}
}


import 'package:flutter/material.dart';




import 'SplashScreen.dart';



void main(List<String> args)async {

runApp(const Home()); 
}

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     
     theme: ThemeData(
      
      primaryColor: Colors.red
     ),
     home: SplashScreen(
      
     ),
     
    //  routes:{
    //   'screen 1':(context) {
    //    return second(); 
    //   },
    //   'screen 2':(context) {
    //    return ScreenHome(); 
    //  } ,
    //  }
    );
    
  }
}
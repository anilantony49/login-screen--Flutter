
import 'package:flutter/material.dart';
import 'SplashScreen.dart';


const SAVE_KEY= 'sharedprefernce value';

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
     home: const SplashScreen(
      
     ),
     
    
    );
    
  }
}
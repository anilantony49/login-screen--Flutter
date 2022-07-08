import 'package:flutter/material.dart';
import 'package:sample3/Login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('homescreen'),
        
      ),
      appBar: AppBar(
        title: const Text('HomeScreen'),
        actions: [
         IconButton(onPressed: (){
          logout(context);
         }, icon: const Icon(Icons.logout),
         tooltip: 'Logout',) 
        ],
      ),
    );
  }
  logout(BuildContext context)async{
    final sharedpref =await SharedPreferences.getInstance();
    await sharedpref.clear();
  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)
  =>LoginScreen()), (route) => false);
}
}

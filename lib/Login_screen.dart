

import 'package:flutter/material.dart';
import 'package:sample3/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main.dart';

class LoginScreen extends StatelessWidget {
  final _usernametextController = TextEditingController();
  final _PasswordtextController = TextEditingController();

  final _formKey=GlobalKey<FormState>();
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:const Text('Login Screen') ,
          backgroundColor: Colors.red,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key:_formKey,
              child: Column(
                children: [
                  TextFormField(
                   
                      decoration: const InputDecoration(
                          hintText: 'username', border: OutlineInputBorder()),
                      controller: _usernametextController,
                       validator: (value) {
                      if(value==null||value.isEmpty){
                         return 'value is empty';

                      }else{
                        return null;
                      }
                    },),
                      
                  const SizedBox(
                    height:10
                  ),
                  TextFormField(
                    
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: 'password', border: OutlineInputBorder()),
                    controller: _PasswordtextController,
                     validator: (value) {
                      if(value==null||value.isEmpty){
                        return 'value is empty';

                      }else{
                        return null;
                      }
                    },
                  ),
                   const SizedBox(
                    height:10
                  ),
                  ElevatedButton(onPressed: () {
                    if( _formKey.currentState!.validate()){
                       CheckLogin(context);
                    }else{
                    print('data empty');
                    }
                   
                    // 
                  }, child: const Text('Login'))
                ],
              ),
            ),
          ),
        ));
  }

 void CheckLogin(BuildContext context)async{
  final username=_usernametextController.text;
  final password = _PasswordtextController.text;

  if(username==password){
   final sharedpref=await  SharedPreferences.getInstance();
    final loginvalue= sharedpref.setBool(SAVE_KEY, true);

    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
      return const HomeScreen();
    }));
  }else{
    // print('password and username does not match');
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('password and username does not match'),
        behavior:SnackBarBehavior.floating ,
        margin: EdgeInsets.all(10),));
  }
}

}

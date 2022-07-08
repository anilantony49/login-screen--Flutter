

import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  final _usernametextController = TextEditingController();
  final _PasswordtextController = TextEditingController();
  ScreenHome({Key? key}) : super(key: key);

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
            child: Column(
              children: [
                TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'username', border: OutlineInputBorder()),
                    controller: _usernametextController),
                const SizedBox(
                  height:10
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: 'password', border: OutlineInputBorder()),
                  controller: _PasswordtextController,
                ),
                 const SizedBox(
                  height:10
                ),
                ElevatedButton(onPressed: () {
                  CheckLogin();
                }, child: const Text('Save'))
              ],
            ),
          ),
        ));
  }

  Future <void> CheckLogin()async{
  if(_usernametextController==_PasswordtextController){
    // go to homeScreen
  }else{
    print('password and username does not match');
  }
}

}

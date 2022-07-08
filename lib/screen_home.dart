

import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  final _usernametextController = TextEditingController();
  final _PasswordtextController = TextEditingController();

  final _formKey=GlobalKey<FormState>();
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
                  }, child: const Text('Save'))
                ],
              ),
            ),
          ),
        ));
  }

 void CheckLogin(BuildContext context){
  final username=_usernametextController.text;
  final password = _PasswordtextController.text;

  if(username==password){
    // go to homeScreen
  }else{
    print('password and username does not match');
  }
}

}

import 'package:flutter/material.dart';
import 'package:flutter_application_seance1/home.dart';

class LoginScreen extends StatefulWidget {

  static final String routeName = "/";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
  GlobalKey<FormState> form=GlobalKey();

   return Scaffold(
      appBar: AppBar(title: Text("Game Esprim"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Form(
              key: form,
              child: Column(children: [

                
                //text2 
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                                  ),validator: ((value) {
                    if (value!.isEmpty){
                      return'please enter some text';
                    }
                                  }),
                                ),
                  ),
                //text3
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                                  ),validator: ((value) {
                    if (value!.isEmpty){
                      return'please enter some text';
                    }
                                  }),
                                ),
                  )

                ,ElevatedButton(onPressed:(() {
                if(form.currentState!.validate()){
                  Navigator.pushNamed(context, HomeScreen.routeName);
                }
              }), child: Text("Submit")
              )
            ],))
          ],
        ),
      ),
    );
  
  }
}
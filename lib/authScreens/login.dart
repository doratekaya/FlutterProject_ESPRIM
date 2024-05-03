import 'package:flutter/material.dart';
import 'package:flutter_application_seance1/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {

  static final String routeName = "/login";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
    
    final TextEditingController tfemail =TextEditingController();

   void SaveUser(String s){
    SharedPreferences.getInstance().then((value) => 
    value.setString("username", s));
   }

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
                      controller: tfemail,
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
                  //saveUSEr();
                SaveUser(tfemail.text);
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
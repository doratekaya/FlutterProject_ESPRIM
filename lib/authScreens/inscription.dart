import 'package:flutter/material.dart';

class Inscription extends StatefulWidget {
  const Inscription({super.key});

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  GlobalKey<FormState> form=GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Game Esprim"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Form(
              key: form,
              child: Column(children: [

                //1 text 1
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                
                  decoration: InputDecoration(
                    labelText: 'User name',
                    border: OutlineInputBorder(),
                  ),validator: ((value) {
                    if (value!.isEmpty){
                      return'please enter some text';
                    }
                  }),
                ),
              ),
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
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Processing data')));
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
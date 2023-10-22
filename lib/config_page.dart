import 'package:flutter/material.dart';
import 'package:getime/app_controller.dart';

class ConfigPage extends StatefulWidget {
  
  @override
  _ConfigPageState createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage>{
  
  @override
  Widget build(BuildContext context){
  

    return Scaffold(
      body: ListView(
        children:[ 
          Row(children: [
            Text('Tema escuro'),
            Switch(
              value: AppController.instance.darkTheme, 
              onChanged: (value){
                AppController.instance.changeTheme();
              }
            )
          ],)
          
        ]
      )
    );

  }
}
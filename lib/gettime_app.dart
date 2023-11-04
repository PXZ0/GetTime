import 'package:flutter/material.dart';
import 'package:getime/app_controller.dart';
import 'package:getime/barb_page.dart';
import 'package:getime/cad_page.dart';
import 'package:getime/config_page.dart';
import 'package:getime/home_page.dart';
import 'package:getime/login_page.dart';

class GetTime extends StatelessWidget {
  
  @override
  Widget build(BuildContext context){

    return AnimatedBuilder(
      animation: AppController.instance, 
      builder: (context, child){
         return MaterialApp(
          title: 'Get Time',
          theme: ThemeData(
            primarySwatch: Colors.grey,
            brightness: AppController.instance.darkTheme 
              ? Brightness.dark 
              : Brightness.light
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/cadastro': (context) => CadPage(),
            '/home':(context) => HomePage(),
            '/config':(context) => ConfigPage(),
            '/barbearia':(context) => BarbPage(),

          },
        );
      });
  }
}
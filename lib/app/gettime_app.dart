import 'package:flutter/material.dart';
import 'package:getime/app/app_controller.dart';
import 'package:getime/app/views/barb_page.dart';
import 'package:getime/app/views/cad_page.dart';
import 'package:getime/app/views/config_page.dart';
import 'package:getime/app/views/home_page.dart';
import 'package:getime/app/views/login_page.dart';
import 'package:getime/app/views/splash_screen.dart';
// import 'package:google_fonts/google_fonts.dart';

class GetTime extends StatelessWidget {
  
  @override
  Widget build(BuildContext context){

    return AnimatedBuilder(
      animation: AppController.instance, 
      builder: (context, child){
         return MaterialApp(
          title: 'Get Time',

          // Theme
          theme: ThemeData(
            // fontFamily: GoogleFonts.lato().fontFamily,
            primarySwatch: Colors.grey,

            // Tema Escuro ou claro
            brightness: AppController.instance.darkTheme 
              ? Brightness.dark 
              : Brightness.light
          ),

          // Rotas
          initialRoute: '/',
          routes: {
            '/': (context) => SplashScreen(),
            '/login': (context) => LoginPage(),
            '/cadastro': (context) => CadPage(),
            '/home':(context) => HomePage(),
            '/config':(context) => ConfigPage(),
            '/barbearia':(context) => BarbPage(),

          },
        );
      });
  }
}
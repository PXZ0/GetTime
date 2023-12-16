import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    _navigateToLogin();
  }

  _navigateToLogin() async{
    // Você pode realizar qualquer carregamento inicial aqui, se necessário
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    // Após 1.5 segundos
    Navigator.of(context).pushReplacementNamed('/login');;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'GET TIME', 
              textAlign: TextAlign.center,
              style: TextStyle(        
                color: Colors.white,
                fontSize: 48,
                decoration: TextDecoration.underline
              ),
            ),
          ]
        ),
      ),
    );
  }
}
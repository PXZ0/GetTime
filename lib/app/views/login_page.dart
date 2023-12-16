

import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';

  void _login() {
    if (email == "pedro@gmail.com" && senha == '123') {
      Navigator.of(context).pushReplacementNamed('/home');
    }
  }

  Widget _body() {
    return SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Login',
                  style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
                ),

                const SizedBox(height: 10.0),

                const Text(
                  'Faça login para continuar ',
                  style: TextStyle(
                      fontSize: 17.0, ),
                ),

                const SizedBox(height: 30.0),

                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email', border: OutlineInputBorder()),
                ),

                const SizedBox(height: 30.0),

                TextField(
                  onChanged: (text) {
                    senha = text;
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: 'Senha', border: OutlineInputBorder()),
                ),

                const SizedBox(height: 30.0),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    side: const BorderSide(
                      
                      width: 1.0,
                      color: Colors.white,
                    )
                    
                  ),
                  
                  onPressed: _login,

                  child: Container(
                    width: double.infinity, 
                    child: const Text(
                      'Fazer Login', 
                      textAlign: TextAlign.center
                      
                    ),
                  ),
                  
                ),

                const SizedBox(height: 10.0),
                
                Container(
                  child: GestureDetector(
                    child: const Text(
                      'Ainda não tem cadastro? Clique aqui',    
                    ),
                    onTap: () => Navigator.of(context).pushNamed('/cadastro'),
                  )
                )
              ],
            ),
          )
        )
      );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Container(
              child: Image.asset(
                'assets/images/bkg1.png', 
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,),
            ),
          ),
          _body(),
        ],
      )
    );
  }
}
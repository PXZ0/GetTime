// ignore_for_file: prefer_const_constructors, avoid_print

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:getime/home_page.dart';

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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Login',
                  style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
                ),

                SizedBox(height: 10.0),

                Text(
                  'Faça login para continuar ',
                  style: TextStyle(
                      fontSize: 17.0, ),
                ),

                SizedBox(height: 30.0),

                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email', border: OutlineInputBorder()),
                ),

                SizedBox(height: 30.0),

                TextField(
                  onChanged: (text) {
                    senha = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Senha', border: OutlineInputBorder()),
                ),

                SizedBox(height: 30.0),

                ElevatedButton(
                  onPressed: _login,
                  child: Text('Fazer Login'),                  
                ),

                SizedBox(height: 10.0),
                
                Container(
                  child: GestureDetector(
                    child: Text(
                      'Ainda não tem cadastro? Clique aqui',    
                    ),
                    onTap: () => Navigator.of(context).pushNamed('/cadastro'),
                  )
                )
                
              ],
              
            ),
          )
        )
      )
    );
  }
}
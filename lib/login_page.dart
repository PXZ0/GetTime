import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';
  

  void _fazerlogin(){


    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context){

    return Scaffold(        
        body: Center(
          // padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text( 
                'Login',
                style: TextStyle(fontSize: 24.0),
              ),

              Text(
                'Faça login para continuar ',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              
              SizedBox(height: 30.0),

              TextField(
                onChanged: (text){
                  email = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder()
                ),
              ),

              SizedBox(height: 30.0),

              TextField(
                onChanged: (text){
                  senha = text;
                },
                obscureText:true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder()
                ),
              ),

              SizedBox(height: 30.0),

              ElevatedButton(
                onPressed: _fazerlogin, 
                child: Text('Fazer Login'),
              ),
            ],
          ),
        )
    );
  }
}
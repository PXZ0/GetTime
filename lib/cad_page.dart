// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CadPage extends StatefulWidget {
  const CadPage({super.key});

  @override
  State<CadPage> createState() => _CadPageState();
}

class _CadPageState extends State<CadPage> {
  // Variaveis
  String nome = '';
  String email = '';
  String senha = '';

  // Função para cadastro
  void _cadastro() {


    Navigator.of(context).pushReplacementNamed('/home');
  }

  Widget _body (){
    return SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                
                // Texto de Chamada
                Text(
                  'Crie uma nova conta',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35.0, 
                    fontWeight: FontWeight.bold, 
                    fontFamily: 'RobotoMono'
                  ),
                ),

                SizedBox(height: 10.0),

                // Redirecionamento para Login
                Container(
                  child: GestureDetector(
                    child: Text(
                      'Já está registrado clique aqui',    
                    ),
                    onTap: () => Navigator.of(context).pushNamed('/'),
                  )
                ),

                SizedBox(height: 30.0),

                // Campo para Nome
                TextField(
                  onChanged: (text) {
                    nome = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Nome', border: OutlineInputBorder()),
                ),

                SizedBox(height: 30.0),

                // Campo para Email
                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email', border: OutlineInputBorder()),
                ),

                SizedBox(height: 30.0),

                // Campo para Senha
                TextField(
                  onChanged: (text) {
                    senha = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Senha', border: OutlineInputBorder()),
                ),

                SizedBox(height: 30.0),

                // Botão de Cadastro
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
                  
                  onPressed: _cadastro,

                  child: Container(
                    width: double.infinity, 
                    child: Text(
                      'Cadastrar-se', 
                      textAlign: TextAlign.center
                      
                    ),
                  ),
                  
                ),

                SizedBox(height: 10.0),
                
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
            child: Image.asset('assets/images/bkg2.png', fit: BoxFit.cover,),
          ),
          _body(),
        ],
      )
    );
  }
}
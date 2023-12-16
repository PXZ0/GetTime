import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
  Future<void> cadastro(nome, email, senha) async{
    final response = await http.post(
      Uri.parse('http://10.0.2.2/api/api.php'),
      headers: {'Content-Type': 'application/jason'},
      body:jsonEncode({'nome': nome, 'email': email, 'senha': senha})
    );

    if(response.statusCode == 200){
      Navigator.of(context).pushReplacementNamed('/home');
    }else{
      print('Falha no cadastro');
    }
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
                const Text(
                  'Crie uma nova conta',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35.0, 
                    fontWeight: FontWeight.bold, 
                    fontFamily: 'RobotoMono'
                  ),
                ),

                const SizedBox(height: 10.0),

                // Redirecionamento para Login
                Container(
                  child: GestureDetector(
                    child: const Text(
                      'Já está registrado clique aqui',    
                    ),
                    onTap: () => Navigator.of(context).pushNamed('/'),
                  )
                ),

                const SizedBox(height: 30.0),

                // Campo para Nome
                TextField(
                  onChanged: (text) {
                    nome = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Nome', border: OutlineInputBorder()),
                ),

                const SizedBox(height: 30.0),

                // Campo para Email
                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email', border: OutlineInputBorder()),
                ),

                const SizedBox(height: 30.0),

                // Campo para Senha
                TextField(
                  onChanged: (text) {
                    senha = text;
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: 'Senha', border: OutlineInputBorder()),
                ),

                const SizedBox(height: 30.0),

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
                  
                  onPressed:(){ cadastro(nome, email, senha);},

                  child: Container(
                    width: double.infinity, 
                    child: const Text(
                      'Cadastrar-se', 
                      textAlign: TextAlign.center                      
                    ),
                  ),
                  
                ),

                const SizedBox(height: 10.0),
                
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
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      drawer: Drawer(
        child: Column(
          children: [
            
            // Widget de conta do usuario
            UserAccountsDrawerHeader(
              // currentAccountPicture: ClipRRect(
                //borderRadius: BorderRadius.circular(40), 
                //child:image.asset('endereco')
              // ), Comando para foto do usuario
              accountName: Text('Pedro'), 
              accountEmail: Text('Pedro@gmail.com')
            ),

            // Opção de Home
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              subtitle: Text('teste pra tu ver'),
              onTap: (){
                print('home');
              },
            ),

            // Opção de Logout
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Sair'),
              subtitle: Text('Aqui sai'),
              onTap: (){
                 Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ]
        ),
      ),

      appBar: AppBar(
        
        // Botões de ação
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),

          IconButton(
            icon: Icon(
              Icons.share,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),

          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),

      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget> [
              SizedBox(
                width: double.infinity,
                height: 20.00,
              ),

              SizedBox(
                width: double.infinity,
                child: Icon(Icons.local_attraction),
                
              )

            ],
          )
        ),
      ),
    );
  }
}
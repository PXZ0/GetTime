import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void _EntrarBarbearia (){
    Navigator.of(context).pushNamed('/barbearia');
  }

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

            // Opção de Agenda
            ListTile(
              leading: Icon(Icons.calendar_month),
              title: Text('Agenda'),
              subtitle: Text('Veja aqui seus horarios'),
              onTap: (){
                print('home');
              },
            ),

            // Opção de Configurações
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configurações'),
              subtitle: Text('Configura aqui'),
              onTap: (){
                Navigator.of(context).pushNamed('/config');
              },
            ),

            // Opção de Logout
            ListTile(
              leading: Icon(Icons.logout),
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget> [

              SizedBox(height: 20.0,),


              Text(
                'Perto de Você',
                style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold, fontFamily: 'RobotoMono'),
              ),
              
              SizedBox(height: 10.0,),

              Text(
                'Clique e agende já seu horário',
                style: TextStyle(
                    fontSize: 17.0, ),
              ),
              

              SizedBox(
                width: double.infinity,
                height: 20.00,
              ),
              
              ListTile(
                leading: Icon(Icons.location_on),
                title: Text('Barbearia do Emerson'),
                subtitle: Text('Aberta agora'),
                onTap:  _EntrarBarbearia,
              ),


            ],
          )
        ),
      ),
    );
  }
}
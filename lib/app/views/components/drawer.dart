import 'package:flutter/material.dart';

class ComponentDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: [
            
            // Widget de conta do usuario
            UserAccountsDrawerHeader(
              // currentAccountPicture: ClipRRect(
              //   borderRadius: BorderRadius.circular(40), 
              //   child:image.asset('endereco')
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
      );
  }
}
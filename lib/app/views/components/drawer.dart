import 'package:flutter/material.dart';

class ComponentDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: [
            
            // Widget de conta do usuario
            const UserAccountsDrawerHeader(
              // currentAccountPicture: ClipRRect(
              //   borderRadius: BorderRadius.circular(40), 
              //   child:image.asset('endereco')
              // ), Comando para foto do usuario
              accountName: Text('Pedro'), 
              accountEmail: Text('Pedro@gmail.com')
            ),

            // Opção de Home
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Inicio'),
              subtitle: const Text('Página de inicio'),
              onTap: (){
                print('home');
              },
            ),

            // Opção de Agenda
            ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text('Agenda'),
              subtitle: const Text('Veja aqui seus horarios'),
              onTap: (){
                print('home');
              },
            ),

            // Opção de Configurações
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Configurações'),
              subtitle: const Text('Configura aqui'),
              onTap: (){
                Navigator.of(context).pushNamed('/config');
              },
            ),

            // Opção de Logout
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Sair'),
              subtitle: const Text('Aqui sai'),
              onTap: (){
                 Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ]
        ),
      );
  }
}
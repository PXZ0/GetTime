import 'package:flutter/material.dart';
import 'package:getime/app/views/components/drawer.dart';

class BarbeariaSearchDelegate extends SearchDelegate{
  List<String> searchTerms =[
    'Barbearia',
    'Salão',
    'Corte',
  ];

  @override
  List<Widget> buildActions(BuildContext context){
    return[
      IconButton(
        onPressed: (){
          query = '';
        }, 
        icon: const Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context){
    return IconButton(
      onPressed: () {
        close(context, null);
      }, 
      icon: Icon (Icons.arrow_back)
    );
  }

  @override
  Widget buildResults(BuildContext context){
    List<String> matchQuery = [];
    for (var termo in searchTerms){
      if(termo.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(termo);
      }
    }
    
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index){
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context){
    List<String> matchQuery = [];
    for (var termo in searchTerms){
      if(termo.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(termo);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index){
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );

  }

}


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

      drawer: ComponentDrawer(),

      appBar: AppBar(

        // Botões de ação
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              showSearch(
                context: context,
                delegate: BarbeariaSearchDelegate(),
              );
            },
          ),

          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),

          IconButton(
            icon: const Icon(
              Icons.share,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),

          
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

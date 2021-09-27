import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({ Key? key }) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
   List<int> _listaNumeros = [1,2,3,4,5];
  @override
  Widget build(BuildContext context) {

   

    return Scaffold(
      appBar: AppBar(
        title: Text("Lista"),
      ),
      body: _createList(),
      
    );
  }

  Widget _createList() {

    return ListView.builder(
      itemCount: _listaNumeros.length,
      itemBuilder: (BuildContext context, int index){
          final image = _listaNumeros[index];
          return FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://picsum.photos/200/300/'),
          );
      },
    );
  }
}
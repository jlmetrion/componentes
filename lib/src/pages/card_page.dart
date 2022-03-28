import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          _cardTipo1(),
          const SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          const ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('Soy el Titutlo de esta Tarjeta'),
            subtitle: Text(
                'Aqui estamos con la descripcion de la tarjeta que quiero que ustedes tengan una idea de lo que quiero mostrarles'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('Cancelar'),
                onPressed: () {},
              ),
              TextButton(
                child: const Text('Ok'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}

Widget _cardTipo2() {
  final card = Column(
    children: [

      const FadeInImage(
        image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/9/91/Oahu_Landscape.jpg'),
        placeholder: AssetImage('assets/jar-loading.gif'),
        fadeInDuration: Duration(milliseconds: 200),
        height: 300.0,
        fit: BoxFit.cover,
      ),

      // const Image(image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/9/91/Oahu_Landscape.jpg'),
      // ),
       Container(
         padding: const EdgeInsets.all (10.0),
        child: const Text('No se que colocar')
        ),


    ],
  );

  return Container (
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      boxShadow: const <BoxShadow> [BoxShadow(color: Colors.red,
      blurRadius: 10.0,
      spreadRadius: 5.0,
      offset: Offset(2.0, 10.0) ),
      ]
    ),
    child: ClipRRect (
      borderRadius: BorderRadius.circular(30.0),
      child: card,
      
    ),

  );
}

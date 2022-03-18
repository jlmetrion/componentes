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
        children: <Widget>[_cardTipo1()],
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
    return  Card(
        child: Column(
          children:  <Widget> [
            const ListTile(
              leading: Icon(Icons.photo_album, color: Colors.blue,),
              title: Text('Soy el Titutlo de esta Tarjeta'),
              subtitle: Text('Aqui estamos con la descripcion de la tarjeta que quiero que ustedes tengan una idea de lo que quiero mostrarles'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Cancelar'),
                  onPressed: (){},
                  ),
                   TextButton(
                  child: const Text('Ok'),
                  onPressed: (){},
                  )
              ],
            )
          ],
        ),
    );
  }
}

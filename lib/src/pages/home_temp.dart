import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  HomePageTemp({Key? key}) : super(key: key);

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componente Temp'),
        ),
        body: ListView(
          // children: _crearItems()));
          children: _crearItemsCorta()));
  }


  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item + '!'),
            subtitle: const Text ('Esto es subtitulo'),
            leading: const Icon(Icons.access_alarm),
            trailing:  const Icon(Icons.arrow_circle_right),
            onTap: () {},
          ),
          const Divider()
        ],
      );
    }).toList();
      

  }

}

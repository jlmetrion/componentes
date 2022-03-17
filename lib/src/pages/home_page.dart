import 'package:flutter/material.dart';
import '../providers/menu_provider.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    // print(menuProvider.opciones);
    // menuProvider.cargarData()

    return FutureBuilder(
      future: menuProvider.cargarData(),
      // initialData: const [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic>? data, BuildContext context) {
    final List<Widget> opciones = [];
    data?.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: const Icon(Icons.access_alarm_outlined, color: Colors.blue),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
          //     final route = MaterialPageRoute(builder: (context) => const AlertPage()

          // );
          // Navigator.push(context, route);
        },
      );
      opciones
        ..add(widgetTemp)
        ..add(const Divider());
    });
    return opciones;
  }
}
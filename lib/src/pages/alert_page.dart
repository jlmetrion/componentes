import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Mostrar Alerta'),
          onPressed: () => _mostrarAlert(context),
          style: ElevatedButton.styleFrom(
              primary: Colors.red, shape: const StadiumBorder()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

void _mostrarAlert(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)) ,
          title: const Text('Titulo'),
          content: Column(mainAxisSize: MainAxisSize.min, children: const [
            Text('Este es el contenido de la caja de la Alerta'),
            FlutterLogo(size: 100.0)
          ]),
          actions: [
            TextButton(
                child: const Text('Cancelar'),
                onPressed: () => Navigator.of(context).pop()),
            TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                })
          ],
        );
      });
}

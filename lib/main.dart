import 'package:flutter/material.dart';

// Definición de la clase Cliente (con 3 atributos)
class Cliente {
  final int idCliente;
  final String nombre;
  final String rfc;

  Cliente({
    required this.idCliente,
    required this.nombre,
    required this.rfc,
  });
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Datos de Clientes 1229'),
          backgroundColor: Colors.deepPurple,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          actionsIconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        body: Center(
          child: Column(
            // Usamos una Columna en lugar de un Stack
            mainAxisAlignment: MainAxisAlignment.center,
            children: _getClientWidgets(),
          ),
        ),
      ),
    );
  }

  // Función para generar la lista de widgets de clientes (con 3 atributos)
  List<Widget> _getClientWidgets() {
    List<Map<String, dynamic>> clientesData = [
      {
        'idCliente': 1,
        'nombre': 'Juan Pérez',
        'rfc': 'PEPJ800101',
      },
      {
        'idCliente': 2,
        'nombre': 'María García',
        'rfc': 'GARM750505',
      },
      {
        'idCliente': 3,
        'nombre': 'Carlos López',
        'rfc': 'LOC780808',
      },
      {
        'idCliente': 4,
        'nombre': 'Ana Martínez',
        'rfc': 'MAA820202',
      },
      {
        'idCliente': 5,
        'nombre': 'Pedro Ramírez',
        'rfc': 'RAP850303',
      },
    ];

    return clientesData.map((cliente) {
      // Usamos map en lugar de map.entries
      return Container(
        // Eliminamos Positioned
        width: 300,
        margin: EdgeInsets.symmetric(vertical: 10), // Agregamos margen vertical
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: _getColor(cliente['idCliente']),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ID: ${cliente['idCliente']}'),
            Text('Nombre: ${cliente['nombre']}'),
            Text('RFC: ${cliente['rfc']}'),
          ],
        ),
      );
    }).toList();
  }

  // Función para asignar un color diferente a cada contenedor
  Color _getColor(int id) {
    switch (id) {
      case 1:
        return Colors.blue[100]!;
      case 2:
        return Colors.green[100]!;
      case 3:
        return Colors.yellow[100]!;
      case 4:
        return Colors.red[100]!;
      case 5:
        return Colors.purple[100]!;
      default:
        return Colors.grey[100]!;
    }
  }
}

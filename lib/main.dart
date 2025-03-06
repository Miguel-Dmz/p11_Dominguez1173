import 'package:flutter/material.dart';

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
          title: Text('Miguel Dominguez \n Mat:22308051281173'),
          centerTitle: true,
          backgroundColor: Colors.black,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.count(
            crossAxisCount: 3, // Dos columnas
            crossAxisSpacing: 16.0, // Espacio horizontal entre botones
            mainAxisSpacing: 16.0, // Espacio vertical entre botones
            children: [
              // Botones con icono
              _buildSquareButton('estrella', Icons.star, hasIcon: true),
              _buildSquareButton('corazon', Icons.favorite, hasIcon: true),
              _buildSquareButton('codigo', Icons.code, hasIcon: true),
              _buildSquareButton('configuracion', Icons.settings,
                  hasIcon: true),

              // Botones sin icono
              _buildSquareButton('no hay nada 1', Icons.code, hasIcon: false),
              _buildSquareButton('no hay nada 2', Icons.code, hasIcon: false),
              _buildSquareButton('no hay nada 3', Icons.code, hasIcon: false),
              _buildSquareButton('no hay nada 4', Icons.code, hasIcon: false),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSquareButton(String text, IconData icon, {bool hasIcon = true}) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffb4a629), // Color de fondo amarillo
        borderRadius: BorderRadius.circular(0), // Bordes redondeados
      ),
      child: TextButton(
        onPressed: () {
          // Acción al presionar el botón
          print('Botón presionado: $text');
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (hasIcon) // Muestra el icono solo si hasIcon es true
              Icon(icon, color: Colors.black),
            if (hasIcon) // Espacio entre el icono y el texto (solo si hay icono)
              SizedBox(height: 8),
            Text(
              text,
              style: TextStyle(color: Colors.black, fontSize: 15), // Texto
            ),
          ],
        ),
      ),
    );
  }
}

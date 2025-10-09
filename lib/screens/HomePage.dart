import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        //Ícono de la izquierda
        leading: Icon(Icons.menu, color: Colors.grey[800]),
        //Ícono de la derecha
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      body: const Column(
        children: [
          //Texto principal
          Text('Hola Mbapech'),
        ],

        //Pestañas (TabBar)

        //Contenido de las pestañas (TabBarView

        //Carrrito de compras (Cart)
      ),
    );
  }
}

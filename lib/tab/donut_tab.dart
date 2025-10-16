import 'package:donut_app/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  DonutTab({super.key});
  //List of donuts
  final List donutOnSale = [
    //donutFlavor, donutPrice, donutColor
    [
      'chocolate',
      '100',
      Colors.brown,
      "lib/images/chocolate_donut.png",
      'Starbucks',
    ],
    [
      'Stawbery',
      '89',
      Colors.red,
      "lib/images/strawberry_donut.png",
      'Krispy Kreme',
    ],
    [
      'Ice Creame',
      '95',
      Colors.blue,
      "lib/images/icecream_donut.png",
      "Dunky' Donut",
    ],
    ['Grape', '75', Colors.purple, "lib/images/grape_donut.png", 'Oxxo'],
  ];
  // ...existing code...
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // Espacio alrededor del grid (márgenes laterales / superior-inferior)
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),

      //Se encarga de acomodar los elementos dentro del grid
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //Número de columnas
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.4,
        // Espacio vertical entre filas
        mainAxisSpacing: 12,
        // Espacio horizontal entre columnas
        crossAxisSpacing: 12,
      ),
      itemCount: donutOnSale.length,
      itemBuilder: (context, index) {
        // Espacio interno/margen de cada tile
        return Padding(
          padding: const EdgeInsets.all(6.0),
          child: DonutTile(
            donutFlavor: donutOnSale[index][0],
            donutPrice: donutOnSale[index][1],
            donutColor: donutOnSale[index][2],
            donutImagePath: donutOnSale[index][3],
            donutProvider: donutOnSale[index][4],
          ),
        );
      },
    );
  }

  // ...existing code...
}

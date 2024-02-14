import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight +  50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:  16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset('images/barra.png'),
                SizedBox(width:  8), // Espacio entre la imagen y el texto
                Text(
                  '     Tarea  1',
                  style: TextStyle(
                    fontSize:  24, // Tamaño del texto
                    fontWeight: FontWeight.bold, // Peso del texto
                    color: Colors.white60, // Color del texto
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
          ],
        ),
      ),
    );
  }
}

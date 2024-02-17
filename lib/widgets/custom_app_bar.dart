import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool _isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: kToolbarHeight + 50,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (!_isMenuOpen) ...[
                Row(
                  children: [
                    Image.asset('images/barra.png'),
                    SizedBox(width: 4), // Espacio entre la imagen y el texto
                    Text(
                      'Tarea 1',
                      style: TextStyle(
                        fontSize: 24, // Tamaño del texto
                        fontWeight: FontWeight.bold, // Peso del texto
                        color: Colors.white60, // Color del texto
                      ),
                    ),
                  ],
                ),
              ],
              IconButton(
                onPressed: () {
                  setState(() {
                    _isMenuOpen = !_isMenuOpen;
                  });
                },
                icon: Icon(Icons.account_box_sharp),
              ),
              if (_isMenuOpen)
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Alma Ponce',
                        style: TextStyle(
                          fontSize: 24, // Tamaño del texto
                          fontWeight: FontWeight.bold, // Peso del texto
                          color: Colors.white54, // Color del texto
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:video1_agpm/models/data.dart';
import 'package:video1_agpm/pages/details_cha.dart';
import 'package:video1_agpm/widgets/custom_app_bar.dart';
import 'package:video1_agpm/widgets/custom_bottom_bar.dart';

class HomePageCha extends StatefulWidget {
  const HomePageCha({Key? key}) : super(key: key);

  @override
  State<HomePageCha> createState() => _HomePageChaState();
}

class _HomePageChaState extends State<HomePageCha> {
  final _pageController = PageController(viewportFraction: 0.75);

  double _currentPage = 0.0;

  void _listener() {
    setState(() {
      _currentPage = _pageController.page!;
    });
  }

  @override
  void initState() {
    _pageController.addListener(_listener);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        body: Column(
          children: [
            const CustomAppBar(),
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: List.generate(
                    listCategory.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Text(
                        listCategory[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          color: index == _currentPage.round() ? getColor(index) : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: listCha.length,
                controller: _pageController,
                itemBuilder: (context, index) {
                  final cha = listCha[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder: (context, animation, _) {
                            return DetailsChaPage(cha: cha);
                          },
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: _currentPage.round() == index ? 30 : 60),
                      child: Transform.translate(
                        offset: Offset(_currentPage.round() == index ? 0 : 20, 0),
                        child: LayoutBuilder(builder: (context, constraints) {
                          return AnimatedContainer(
                            duration: const Duration(milliseconds: 250),
                            margin: EdgeInsets.only(
                              top: _currentPage.round() == index ? 30 : 50,
                              bottom: 30,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(36),
                              color: Colors.white,

                            ),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                    vertical: 40,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        cha.clan,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        cha.name,
                                        style: const TextStyle(
                                          fontSize: 28,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        cha.nacimiento,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: constraints.maxHeight * 0.2,
                                  left: constraints.maxWidth * 0.05,
                                  right: -constraints.maxWidth * 0.16,
                                  bottom: constraints.maxHeight * 0.2,
                                  child: Hero(
                                    tag: cha.name,
                                    child: Image(
                                      image: AssetImage(
                                        cha.listImage[0].image,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Material(
                                    color: cha.listImage[0].color,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(36),
                                      bottomRight: Radius.circular(36),
                                    ),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: InkWell(
                                      onTap: () {
                                        _showProfessorsDialog(cha.professors, getColor(index) );
                                      },
                                      child: const SizedBox(
                                        height: 100,
                                        width: 100,
                                        child: Icon(
                                          Icons.add,
                                          size: 40,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 120,
              padding: const EdgeInsets.all(20),
              child: CustomBottomBar(color: getColor(_currentPage.round())),
            )
          ],
        ),
      ),
    );
  }

  Color getColor(int index) {
    return listCha[index].listImage[0].color;
  }

 void _showProfessorsDialog(List<String> professors, Color characterColor) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AnimatedBuilder(
        animation: _pageController, // Usar el mismo controlador de página para la animación
        builder: (BuildContext context, Widget? child) {
          return AlertDialog(
            backgroundColor: characterColor.withOpacity(0.8), // Establecer una opacidad constante
            title: const Text('Profesores'),
            content: SingleChildScrollView(
              child: ListBody(
                children: professors
                    .map((professor) => ListTile(
                          title: Text(
                            professor,
                            style: const TextStyle(color: Colors.white), // Cambiar el color del texto a blanco
                          ),
                        ))
                    .toList(),
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Cerrar', style: TextStyle(color: Colors.white)), // Cambiar el color del texto del botón a blanco
              ),
            ],
          );
        },
      );
    },
  );
}


}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video1_agpm/pages/home_page.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super (key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      title: "Equipo 7",
      theme: ThemeData.dark(),
      home: const HomePageCha(),
      debugShowCheckedModeBanner: false,
    );
  }
}

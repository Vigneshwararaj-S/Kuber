import 'package:flutter/material.dart';
import 'package:kuber/pages/homepage.dart';
import 'package:kuber/theme.dart';
import 'package:hive_flutter/hive_flutter.dart';


void main() async{
  await Hive.initFlutter();
  await Hive.openBox('money');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kuber Manager',
      theme: myTheme,
      home: const HomePage(),
    );
  }
}


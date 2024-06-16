import 'package:flutter/material.dart';
import 'package:flutter_to_do/pages/home_page.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
// init Hive
  await Hive.initFlutter();
  // box open
  var box = await Hive.openBox('myBox');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          primaryColor: Colors.yellow,
          appBarTheme: AppBarTheme(color: Colors.yellow),
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.yellow)),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:store_design/home_page.dart';
import 'package:store_design/home_page_landspace.dart';
import 'color_schemes.g.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar', 'SA'),
      themeMode: ThemeMode.dark,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF9e9e9e),
          ),
          useMaterial3: true,
          colorScheme: lightColorScheme,
          fontFamily: 'Ciro'),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        fontFamily: 'Ciro',
        appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF636363),
      ),
      ),
      home: Directionality(textDirection: TextDirection.rtl, child: Home()),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:store_design/home_page.dart';
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
      themeMode: ThemeMode.light,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFFf6f6f6),
          ),
          useMaterial3: true,
          colorScheme: lightColorScheme,
          fontFamily: 'Ciro'),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        fontFamily: 'Ciro',
      ),
      home: Directionality(textDirection: TextDirection.rtl, child: Home()),
    );
  }
}

import 'package:couldai_user_app/shell.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CouldAI User App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Colors.purple.shade900,
        colorScheme: ColorScheme.dark(
          primary: Colors.purple.shade900,
          secondary: Colors.purple.shade700,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          surface: Colors.grey.shade900,
          onSurface: Colors.white,
        ),
        cardTheme: CardTheme(
          color: Colors.grey.shade900.withOpacity(0.5),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white70),
          titleLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(color: Colors.purple.shade300),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.purple.shade800,
          foregroundColor: Colors.white,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Shell(),
      },
    );
  }
}

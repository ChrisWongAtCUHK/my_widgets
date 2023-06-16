import 'package:flutter/material.dart';
import 'views/home.dart';
import 'views/time.dart';
import 'views/text.dart';
import 'views/image.dart';
import 'views/button.dart';
import 'views/form.dart';
import 'views/datetimepicker.dart';
import 'views/layout.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/time': (context) => const TimeScreen(),
        '/text': (context) => const TextScreen(),
        '/image': (context) => const ImageScreen(),
        '/button': (context) => const ButtonScreen(),
        '/form': (context) => const FormScreen(),
        '/datetimepicker': (context) => const DateTimePickerScreen(),
        '/layout': (context) => const LayoutScreen(),
      },
    );
  }
}

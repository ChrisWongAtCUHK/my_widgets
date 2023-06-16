import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Welcome To Flutter")),
      body: Center(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Time'),
              onTap: () => Navigator.pushNamed(context, '/time'),
            ),
            ListTile(
              title: const Text('Text'),
              onTap: () => Navigator.pushNamed(context, '/text'),
            ),
            ListTile(
              title: const Text('Image'),
              onTap: () => Navigator.pushNamed(context, '/image'),
            ),
            ListTile(
              title: const Text('Button'),
              onTap: () => Navigator.pushNamed(context, '/button'),
            ),
            ListTile(
              title: const Text('Form'),
              onTap: () => Navigator.pushNamed(context, '/form'),
            ),
            ListTile(
              title: const Text('DatetimePicker'),
              onTap: () => Navigator.pushNamed(context, '/datetimepicker'),
            ),
          ],
        ),
      ),
    );
  }
}

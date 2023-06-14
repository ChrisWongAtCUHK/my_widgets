import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Welcome To Flutter")),
      body: Center(
        child: _buildLists(context),
      ),
    );
  }

  Widget _buildLists(BuildContext context) {
    List<Widget> items = [
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
    ];

    return ListView(children: items);
  }
}

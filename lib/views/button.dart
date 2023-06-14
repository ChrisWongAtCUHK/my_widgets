import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 	TextButton
    var textButton = TextButton(
      child: const Text('TextButton'),
      onPressed: () {},
    );

    // ElevatedButton
    var elevtedButton = ElevatedButton(
      child: const Text('ElevatedButton'),
      onPressed: () {},
    );

    // 	OutlinedButton
    var outlinedButton = OutlinedButton(
      child: const Text('OutlinedButton'),
      onPressed: () {},
    );

    var textButtonWithStyle = TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        foregroundColor: Colors.purple,
        textStyle: const TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      child: const Text('CustomStyle'),
    );

    var elevatedButtonWithIcon = ElevatedButton.icon(
      icon: const Icon(Icons.home),
      label: const Text('Home'),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.red,
        shadowColor: Colors.orange,
      ),
    );

    var outlinedButtonWithStyle = OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        side: const BorderSide(width: 2, color: Colors.green),
      ),
      child: const Text('OutlinedButton'),
    );

    var iconButton = IconButton(
      icon: const Icon(Icons.build_circle),
      iconSize: 30.0,
      splashRadius: 20.0,
      onPressed: () {},
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Button')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textButton,
          elevtedButton,
          outlinedButton,
          textButtonWithStyle,
          elevatedButtonWithIcon,
          outlinedButtonWithStyle,
          iconButton
        ],
      ),
    );
  }
}

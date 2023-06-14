import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var imageFromNetowrk = Image.network(
      'https://itadstatic.ithome.com.tw/B1/1628779934_6115359ee4a54.gif',
    );

    var imageFromAssets = Image.asset(
      'images/cat-2083492-pixabay.jpg',
      width: 300,
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Image')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('從網路載入'),
          imageFromNetowrk,
          const Text('從assets載入'),
          imageFromAssets,
        ],
      ),
    );
  }
}

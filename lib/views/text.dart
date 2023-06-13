// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var text = const Text('text');

    var textWithStyle = const Text(
      'Bold Text',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
    );

    var textWithAlgin = const Text(
      'ABCDEFGHIJKLMNOPQRSTUVWXYZ',
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: 40.0,
      ),
    );

    var textWithWords = const Text(
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ',
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );

    var richTextWithSpanStyle = Text.rich(
      TextSpan(
        children: [
          const TextSpan(
            text: '鐵人賽: ',
            style: TextStyle(color: Colors.red),
          ),
          TextSpan(
            text: '點我去報名吧',
            style: const TextStyle(color: Colors.blue),
            recognizer: TapGestureRecognizer()
              ..onTap = () =>
                  print('Go https://ithelp.ithome.com.tw/2021ironman/event'),
          ),
        ],
      ),
    );

    var textWithFont = const Text(
      'ABCDEFGHIJKLMNOPQRSTUVWXYZ',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 40.0,
        fontFamily: 'BungeeOutline',
      ),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Text')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          text,
          textWithStyle,
          textWithAlgin,
          textWithWords,
          richTextWithSpanStyle,
          textWithFont,
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Point {
  final double x;
  final double y;
  const Point(this.x, this.y);
}

const points = [
  Point(0.0, 0.0),
  Point(50.0, 50.0),
  Point(300.0, 100.0),
];

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    var radius = 3.0;

    for (int i = 0; i < points.length; i++) {
      canvas.drawCircle(Offset(points[i].x, points[i].y), radius, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theRow = Container(
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      // 可以更換 Colume 為 Row，理解主軸和縱軸設定差別
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('ABC'),
          Text(
            'DEF',
            style: TextStyle(
              fontSize: 40.0,
            ),
          ),
          Text('GHI')
        ],
      ),
    );

    var theColumn = Container(
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      // 可以更換 Colume 為 Row，理解主軸和縱軸設定差別
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text('ABC'),
          Text(
            'DEF',
            style: TextStyle(
              fontSize: 40.0,
            ),
          ),
          Text('GHI')
        ],
      ),
    );

    var theWrap = Wrap(
      spacing: 30.0,
      runSpacing: 15.0,
      alignment: WrapAlignment.center,
      children: <Widget>[
        Text('ABCDEFGHIJKLKNPQRSTUVWXYZ' * 1),
        const Text('0123456789'),
        Text('零一二三四五六七八九' * 5),
        const Text('0123456789'),
      ],
    );

    var theFlex = Container(
      width: 150,
      height: 145,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent),
      ),
      child: Flex(
        direction: Axis.vertical,
        children: [
          const Text('德國'),
          Expanded(
            flex: 1,
            child: Container(
              color: const Color(0xFF000000),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: const Color(0xFFFF0000),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: const Color(0xFFFFCC00),
            ),
          ),
        ],
      ),
    );

    var square = Container(
      width: 10,
      height: 10,
      color: Colors.green,
    );

    var theAlignWithAlignment = Container(
      width: 200,
      height: 100,
      margin: const EdgeInsets.all(5.0),
      color: Colors.blue[300],
      child: Align(
        alignment: AlignmentDirectional.topCenter,
        // alignment: Alignment(0.0, -1.0),
        child: square,
      ),
    );

    var theAlignWithFractionalOffset = Container(
      width: 200,
      height: 100,
      margin: const EdgeInsets.all(5.0),
      color: Colors.blue[300],
      child: Align(
        alignment: const FractionalOffset(0.0, 0.0),
        child: square,
      ),
    );

    var theStack = Container(
      width: 300,
      height: 150,
      color: Colors.blue[300],
      child: Stack(
        // 預設起角左上角，用來控制沒有設定 top、left、button、right 的 widget
        alignment: AlignmentDirectional.topStart,
        children: [
          CustomPaint(
            painter: OpenPainter(),
          ),
          square,
          const Positioned(
            top: 0.0,
            left: 12.0,
            child: Column(
              children: [
                Text('alignment: topStart '),
              ],
            ),
          ),
          Positioned(
            top: 50.0,
            left: 50.0,
            child: square,
          ),
          const Positioned(
            top: 45.0,
            left: 65.0,
            child: Column(children: [
              Text('top: 50.0'),
              Text('left: 50.0'),
            ]),
          ),
          Positioned(
            bottom: 50.0,
            right: 0.0,
            child: square,
          ),
          const Positioned(
            top: 100.0,
            left: 200.0,
            child: Column(children: [
              Text('right: 0.0'),
              Text('bottom: 50.0'),
            ]),
          ),
        ],
      ),
    );

    Widget content = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        theRow,
        theColumn,
        theWrap,
        theFlex,
        theAlignWithAlignment,
        theAlignWithFractionalOffset,
        theStack,
      ],
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Layout')),
      body: content,
    );
  }
}

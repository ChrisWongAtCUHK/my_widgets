// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class ContainerScreen extends StatefulWidget {
  const ContainerScreen({super.key});

  @override
  _ContainerScreen createState() => _ContainerScreen();
}

class _ContainerScreen extends State<ContainerScreen> {
  var _index = 0;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: const Text('Container'),
      actions: [
        IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {
            scaffoldKey.currentState?.openEndDrawer();
          },
        ),
      ],
    );

    var drawer = Drawer(
      child: ListView(
        children: [
          Container(
            color: Colors.red,
            height: 50,
            child: const Center(
              child: Text(
                '抽屜選單',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('EXIT'),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );

    var body = Column(
      children: [
        Center(
          child: Container(
            constraints: const BoxConstraints.tightFor(
              width: 200.0,
              height: 150.0,
            ),
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: const Color(0xFFFFE3D4),
              border: Border.all(
                color: const Color(0xFFffd700),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            transform: Matrix4.rotationZ(0.2),
            child: Image.asset(
              'images/xFrame.jpg',
            ),
          ),
        ),
      ],
    );

    var bottomNavigationBar = BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo_outlined), label: '相機'),
        BottomNavigationBarItem(
            icon: Icon(Icons.bug_report_outlined), label: 'bug'),
      ],
      currentIndex: _index,
      onTap: (index) {
        setState(() {
          _index = index;
        });

        if (index == 0) {
          Navigator.pop(context);
        }
      },
    );

    return Scaffold(
      key: scaffoldKey,
      appBar: appBar,
      drawer: drawer,
      endDrawer: drawer,
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}

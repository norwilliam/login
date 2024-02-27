import 'package:flutter/material.dart';

class CenterWidgetPage extends StatefulWidget {
  const CenterWidgetPage({super.key});

  @override
  State<CenterWidgetPage> createState() => _CenterWidgetPageState();
}

class _CenterWidgetPageState extends State<CenterWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Center Center"),
      ),
      body: Center(
          child: const Text(
        "Welcome to center",
        style: TextStyle(fontSize: 40),
      )),
    );
  }
}

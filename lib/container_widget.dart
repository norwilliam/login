import 'package:flutter/material.dart';
class ContainerWidget extends StatefulWidget {
  const ContainerWidget({super.key});

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Container Page")),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 89, 255, 74),
            //border: Border.all(width: 3,color: Color.fromARGB(255, 0, 0, 0))
            shape: BoxShape.circle,
          ),
        //color: const Color.fromARGB(255, 16, 255, 235),
        //child: const Text('This is Container'),
            ),
      ),
    );
  }
}
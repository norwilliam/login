import 'package:flutter/material.dart';
import 'MoneyBox.dart';
import 'welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CS APP",
      home: WelcomePage(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class myHomePage extends StatefulWidget {
  const myHomePage({super.key});
  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
//การแสดงผลข้อมูล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "บัญชีรายรับ-รายจ่าย",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          backgroundColor: Colors.indigo,
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              MoneyBox(Colors.green, 120, "ยอดเงินคงเหลือ", 99999999),
              SizedBox(height: 10),
              MoneyBox(Colors.blue, 120, "รายรับ", 8888888),
              SizedBox(height: 10),
              MoneyBox(Colors.red, 120, "รายจ่าย", 111111),
              SizedBox(height: 10),
              MoneyBox(Colors.orange, 120, "ค้างจ่าย", 555.5)
            ],
          ),
        )
      );
  }
}
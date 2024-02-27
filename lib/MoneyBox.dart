import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MoneyBox extends StatelessWidget {
  Color color;
  double size;
  String title;
  double amount;

  MoneyBox(this.color, this.size, this.title, this.amount);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: color, //สีที่ส่งมา
          borderRadius: BorderRadius.circular(10)),
      height: size, //ความสูงของกล่องที่ส่งมา
      child: Row(
        children: [
          Text(
            title, //หัวข้อข้อความที่ส่งมา
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(
              '${NumberFormat("#,###,###.#").format(amount)}',
              style: TextStyle(fontSize: 25, color: Colors.white),
              textAlign: TextAlign.right,
            )
          ),
        ],
      ),
    );
  }
}

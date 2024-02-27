import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    NetworkImage("https://wallpapercave.com/wp/wp3668058.jpg"),
                fit: BoxFit.cover,
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: [Colors.blue, Colors.teal],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _textHeader(),
              _textWelcome(),
              _buttonStart(),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(110),
              child: Image.network(
                "https://static-00.iconduck.com/assets.00/steam-icon-2048x2048-rbyixh0f.png",
                height: 150,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _textHeader() {
  return Padding(
    padding: const EdgeInsets.all(50.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.help,
            color: Colors.black,
          ),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "HELP",
              style: TextStyle(color: Colors.black),
            )),
        Container(
          width: 2.0,
          height: 20,
          color: Colors.white,
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "ภาษาไทย",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            )),
      ],
    ),
  );
}

Widget _textWelcome() {
  return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.black.withOpacity(0.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Welcome to Steam",
            style: TextStyle(
              fontSize: 36,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            " Buy games, protect your Steam account, and get the latest news from your games and the community.",
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            "(นายณัฐภัทร วิเชียรโสภณ 652021048)",
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ));
}

Widget _buttonStart() {
  return Column(
    children: [
      SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: const Color.fromARGB(255, 0, 38, 255),
            onPrimary: Colors.white,
          ),
          child: Text(
            "Login",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      SizedBox(height: 10),
      SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: const Color.fromARGB(255, 1, 38, 253),
            onPrimary: Colors.white,
          ),
          child: Text(
            "Sign Up",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ],
  );
}

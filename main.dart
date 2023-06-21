import 'package:flutter/material.dart';
import 'dart:async';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: Center(
          child: BiggerText(
              text: "Gunawan Sylvester"), // Ubah widget Heading ke PerubahanText
        ),
      ),
    );
  }
}




class Heading extends StatelessWidget {
  final String text;

  const Heading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class BiggerText extends StatefulWidget {
  final String text;
  const BiggerText({Key? key, required this.text}) : super(key: key);
  @override
  _BiggerTextState createState() => _BiggerTextState();
}
Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 166,
          height: 202,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/logo_amibike_purple.png',
              ),
            ),
          ),
        ),
      ),
    );
  }

class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text, style: TextStyle(fontSize: _textSize)),
        ElevatedButton(
          child: const Text("Perbesar"),
          onPressed: () {
            setState(() {
              _textSize = 32.0;
            });
          },
        )
      ],
    );
  }
}

class SmallerText extends StatefulWidget {
  final String text;
  const SmallerText({Key? key, required this.text}) : super(key: key);
  @override
  _BiggerTextState createState() => _BiggerTextState();
}

class _SmallerTextState extends State<BiggerText> {
  double _textSize = 32.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text, style: TextStyle(fontSize: _textSize)),
        ElevatedButton(
          child: const Text("Perkecil"),
          onPressed: () {
            setState(() {
              _textSize = 16.0;
            });
          },
        )
      ],
    );
  }
}

class background_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container( // Menggunakan Container sebagai root widget
        decoration: BoxDecoration( // Menambahkan dekorasi untuk latar belakang
          image: DecorationImage(
            image: AssetImage('logo_amibike_purple_v1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Scaffold(
          body: Center(
            child: BiggerText(
              text: "Gunawan Sylvester",
            ),
          ),
        ),
      ),
    );
  }
}


class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/on-boarding');
    });

    return Container(
      // Widget Anda di sini
    );
  }
}




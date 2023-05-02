import 'package:flutter/material.dart';

class InicialUsuarioPage extends StatefulWidget {
  const InicialUsuarioPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<InicialUsuarioPage> createState() => _InicialUsuarioPageState();
}

class _InicialUsuarioPageState extends State<InicialUsuarioPage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[],
        ),
      ),
    );
  }
}

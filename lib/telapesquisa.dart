import 'package:flutter/material.dart';

class TelaPesquisaPage extends StatefulWidget {
  const TelaPesquisaPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<TelaPesquisaPage> createState() => _TelaPesquisaPageState();
}

class _TelaPesquisaPageState extends State<TelaPesquisaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Página inicial"),
          ],
        ),
      ),
    );
  }
}

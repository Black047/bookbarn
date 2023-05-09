import 'package:flutter/material.dart';
import 'package:trabalhoevandrobarn/telahome.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = '';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: InicialUsuarioPage(title: appTitle),
    );
  }
}

class InicialUsuarioPage extends StatelessWidget {
  const InicialUsuarioPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.brown,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Categorias'),
              onTap: () {
                onPressed:
                () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const InicialUsuarioPage(title: 'Inicial')));
                };
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Conta'),
              onTap: () {
                //daqui vai pra outra tela
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Configuração'),
              onTap: () {
                //daqui vai pra outra tela
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('sobre'),
              onTap: () {
                //daqui vai pra outra tela
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

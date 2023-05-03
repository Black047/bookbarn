import 'package:flutter/material.dart';

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
          child: Row(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 200,
                    width: 150,
                    child: Positioned(
                      top: 20,
                      left: 0,
                      child: Image.asset('assets/images/livro_bia.png'),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    height: 200,
                    width: 150,
                    child: Positioned(
                      bottom: 20,
                      right: 0,
                      child: Image.asset('assets/images/livro_bia.png'),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    height: 200,
                    width: 150,
                    child: Positioned(
                      top: 30,
                      left: 0,
                      child: Image.asset('assets/images/livro_bia.png'),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
              SizedBox(height: 100),
              Column(
                children: [
                  SizedBox(
                    height: 200,
                    width: 150,
                    child: Positioned(
                      top: 10,
                      left: 0,
                      child: Image.asset('assets/images/livro_bia.png'),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    height: 200,
                    width: 150,
                    child: Positioned(
                      bottom: 20,
                      right: 0,
                      child: Image.asset('assets/images/livro_bia.png'),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    height: 200,
                    width: 150,
                    child: Positioned(
                      top: 30,
                      left: 0,
                      child: Image.asset('assets/images/livro_bia.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  SizedBox(
                    height: 200,
                    width: 150,
                    child: Positioned(
                      top: 10,
                      left: 0,
                      child: Image.asset('assets/images/livro_bia.png'),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    height: 200,
                    width: 150,
                    child: Positioned(
                      bottom: 500,
                      right: 500,
                      child: Image.asset('assets/images/livro_bia.png'),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    height: 200,
                    width: 150,
                    child: Positioned(
                      top: 30,
                      left: 0,
                      child: Image.asset('assets/images/livro_bia.png'),
                    ),
                  ),
                ],
              ),
            ],
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
              title: const Text('Categorianta'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('conta'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('configuração'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('sobre'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:trabalhoevandrobarn/categorias.dart';
import 'package:trabalhoevandrobarn/sobre.dart';

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
                    height: 250,
                    width: 200,
                    child: Positioned(
                      top: 50,
                      left: 50,
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
                      child:
                          Image.asset('assets/images/assets/images/demon.png'),
                    ),
                  ),
                  SizedBox(
                    height: 0,
                    width: 60,
                  ),
                  SizedBox(
                    height: 250,
                    width: 200,
                    child: Positioned(
                      bottom: 600,
                      left: 500,
                      child: Image.asset('assets/images/percy.png'),
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    width: 50,
                  ),
                ],
              ),
              SizedBox(height: 100),
              Column(
                children: [
                  SizedBox(
                    height: 250,
                    width: 200,
                    child: Positioned(
                      top: 30,
                      left: 70,
                      child: Image.asset('assets/images/coroa_de_gelo.png'),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                  ), //victoria
                  SizedBox(
                    height: 250,
                    width: 200,
                    child: Positioned(
                      bottom: 20,
                      right: 50,
                      child: Image.asset('assets/images/rainha_vermelha.png'),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    height: 250,
                    width: 200,
                    child: Positioned(
                      top: 50,
                      left: 50,
                      child: Image.asset('assets/images/trono_de_vidro.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  SizedBox(
                    height: 250,
                    width: 250,
                    child: Positioned(
                      top: 50,
                      left: 50,
                      child: Image.asset('assets/images/witcher.png'),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 100,
                  ),
                  SizedBox(
                    height: 250,
                    width: 250,
                    child: Positioned(
                      top: 50,
                      right: 50,
                      child: Image.asset('assets/images/haikyu.png'),
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    width: 200,
                  ),
                  SizedBox(
                    height: 250,
                    width: 200,
                    child: Positioned(
                      top: 50,
                      left: 50,
                      child: Image.asset('assets/images/demon.png'),
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
                }),
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
                () {
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const InicialUsuarioPage(title: 'sobre')));
                };
              },
            ),
          ],
        ),
      ),
    );
  }
}

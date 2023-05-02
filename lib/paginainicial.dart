import 'package:flutter/material.dart';
import 'package:trabalhoevandrobarn/cadastrousuario.dart';
import 'package:trabalhoevandrobarn/telalogin.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          //image: AssetImage()
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Image(
              image: AssetImage('assets/images/logotbh.png'),
            ),
            const SizedBox(height: 20),
            const Text("LOGIN"),
            const SizedBox(height: 20),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const TelaLoginPage(title: 'TelaLogin')));
                  },
                  child: const Text("Login"),
                ),
                // TextField(
                //   decoration: InputDecoration(
                //     labelText: 'Digite aqui',
                //     border: OutlineInputBorder(),
                //   ),
                // ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CadastroUsuarioPage(
                                title: 'CadastroUsuario')));
                  },
                  child: const Text("Cadastro"),
                ),
              ],
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //             builder: (context) =>
      //                 const CadastroUsuarioPage(title: 'CadastroUsuario')));
      //   },
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.person_add),
      // ),
    );
  }
}

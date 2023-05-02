import 'package:flutter/material.dart';
import 'package:trabalhoevandrobarn/telahome.dart';

class TelaLoginPage extends StatefulWidget {
  const TelaLoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<TelaLoginPage> createState() => _TelaLoginPageState();
}

class _TelaLoginPageState extends State<TelaLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          //image: AssetImage()
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(height: 20),
            Container(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white, // altera para branco
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  labelText: 'Digite seu E-Mail ou Usuario',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white, // altera para branco
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  labelText: 'Digite sua senha',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const InicialUsuarioPage(title: 'Inicial')));
              },
              child: const Text("Login"),
            ),
            SizedBox(
              height: 20,
            ),
            const Text("ou cadastre-se com"),
            SizedBox(
              height: 30,
            ),
            SizedBox(
                height: 50.0,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                      width: 50.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/logoinsta.png'),
                              fit: BoxFit.cover))),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                      width: 50.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/logofacebook.png'),
                              fit: BoxFit.cover))),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                      width: 50.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/logogoogle.png'),
                              fit: BoxFit.cover)))
                ])),
          ],
        ),
      ),
    );
  }
}

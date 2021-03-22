import 'package:flutter/material.dart';
import 'package:hello_world/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (value) {
                    email = value;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 22, bottom: 22),
                  child: TextField(
                    onChanged: (value) {
                      password = value;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (email == 'felipe@teste.com' && password == '123') {
                      //  Navigator.of(context).push ou  Navigator.of(context).pushNamed da a opção de goBack()
                      // EXEMPLO ABAIXO É A NAVEGAÇÃO PARA TELA NÃO ESPECIFICADA NO ROUTES DO MAIN.
                      // Navigator.of(context).pushReplacement(
                      //   MaterialPageRoute(builder: (context) => HomePage()),
                      // )
                      Navigator.of(context).pushReplacementNamed('/home');
                    } else {
                      print('login invalido.');
                    }
                  },
                  child: Text('Entrar'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

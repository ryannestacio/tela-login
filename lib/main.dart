import 'dart:ffi';

import 'package:flutter/material.dart';
import 'screens/screen_acadastro.dart';
import 'screens/screen_recuperacao_senha.dart';

void main() {
  runApp(const telaLogin());
}

class telaLogin extends StatelessWidget {
  const telaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blueGrey[300],
          appBar: AppBar(
            title: Text(
              "Login RE",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.blueGrey,
            elevation: 20,
            shadowColor: Colors.indigo,
          ),
          body: contrucaoDaTela(),
        ),
      ),
    );
  }
}

class contrucaoDaTela extends StatelessWidget {
  const contrucaoDaTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: Image.asset(
                'assets/images/resistemas.png',
                width: 150,
                height: 150,
                //color: Colors.indigo,
                //colorBlendMode: BlendMode.difference,
              ),
            ),
            /*Text(
              "       Ryan Estácio\n Sistemas e Soluções",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),*/
            SizedBox(height: 60),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.blueGrey,
                border: Border.all(color: Colors.white, width: 1),
              ),
              padding: EdgeInsets.all(5),
              width: double.infinity,
              child: Center(
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person, color: Colors.indigo),
                hintText: 'Digite seu usuário ou e-mail...',
                //Texto que ficará dentro do input.
                label: Text('Usuário/E-mail'),
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                //Texto que subirá após p ponteiro ficar no input.
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.indigo, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.indigo, width: 2),
                ),
              ),
              autofocus: true,
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.password_rounded, color: Colors.indigo),
                hintText: 'Digite sua senha...',
                label: Text('Senha'),
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.indigo, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.indigo, width: 2),
                ),
              ),
              obscureText: true,
              //Para que o conteúdo digitado dentro do input seja ocultado.
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      //Cor do texto do botão
                      backgroundColor: Colors.indigo,
                      //Cor de fundo do botão
                      elevation: 10,
                      shadowColor: Colors.indigo,
                    ),
                    onPressed: () {},
                    //onPressed vazio, caso queira desabilitar o botão colocaria "null"
                    child: Text(
                      'Entrar',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.indigo,
                      backgroundColor: Colors.white,
                      elevation: 10,
                      shadowColor: Colors.indigo,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cadastro()),
                      );
                    },
                    child: Text(
                      'Cadastrar',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 35),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RecuperacaoSenha()),
                );
              },
              child: Text(
                'Esqueceu a senha?',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  //Com o "underline" texto recebe uma linha reta abaixo
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

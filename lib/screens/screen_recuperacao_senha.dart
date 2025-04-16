import 'package:flutter/material.dart';

class RecuperacaoSenha extends StatelessWidget {
  const RecuperacaoSenha({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Recuperação de Senha",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: areaRecuperacao(),
      ),
    );
  }
}

class areaRecuperacao extends StatelessWidget {
  const areaRecuperacao({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Tela em construção!")],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Godares'),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        alignment: Alignment.center,
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'antecedentes');
              }, 
              child: Text('Antecedentes Generales')
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'antecedentes_empresa');
              }, 
              child: Text('Antecedentes de la Empresa')
            ),
          ],
        ),
      ),
    );
  }
}